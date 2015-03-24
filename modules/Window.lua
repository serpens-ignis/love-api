return {
    name = 'window',
    description = 'The primary responsibility for the love.graphics module is the drawing of lines, shapes, text, Images and other Drawable objects onto the screen. Its secondary responsibilities include loading external files (including Images and Fonts) into memory, creating specialized objects (such as ParticleSystems or Framebuffers) and managing screen geometry.\n\nLÖVE\'s coordinate system is rooted in the upper-left corner of the screen, which is at location (0, 0). The x-axis is horizontal: larger values are further to the right. The y-axis is vertical: larger values are further towards the bottom.\n\nIn many cases, you draw images or shapes in terms of their upper-left corner (See the picture above).\n\nMany of the functions are used to manipulate the graphics coordinate system, which is essentially the way coordinates are mapped to the display. You can change the position, scale, and even rotation in this way.',
    functions = {
        {
            name = 'getDimensions',
            description = 'Gets the width and height of the window.',
            functions = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'width',
                            description = 'The width of the window.'
                        },
                        {
                            type = 'number',
                            name = 'height',
                            description = 'The height of the window.'
                        }
                    }
                }
            }
        },
        {
            name = 'getDisplayName',
            description = 'Gets the name of a display.',
            functions = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'displayindex',
                            description = 'The index of the display to get the name of.'
                        }
                    },
                    returns = {
                        {
                            type = 'string',
                            name = 'name',
                            description = 'The name of the specified display.'
                        }
                    }
                }
            }
        },
        {
            name = 'getFullscreen',
            description = 'Gets whether the window is fullscreen.',
            functions = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'fullscreen',
                            description = 'True if the window is fullscreen, false otherwise.'
                        },
                        {
                            type = 'FullscreenType',
                            name = 'fstype',
                            description = 'The type of fullscreen mode used.'
                        }
                    }
                }
            }
        },
        {
            name = 'getFullscreenModes',
            description = 'Gets a list of supported fullscreen modes.',
            functions = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'display',
                            default = '1',
                            description = 'The index of the display, if multiple monitors are available.'
                        }
                    },
                    returns = {
                        {
                            type = 'table',
                            name = 'modes',
                            description = 'A table of width/height pairs. (Note that this may not be in order.)'
                        }
                    }
                }
            }
        },
        {
            name = 'getHeight',
            description = 'Gets the height of the window.',
            functions = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'height',
                            description = 'The height of the window.'
                        }
                    }
                }
            }
        },
        {
            name = 'getIcon',
            description = 'Gets the window icon.',
            functions = {
                {
                    returns = {
                        {
                            type = 'ImageData',
                            name = 'imagedata',
                            description = 'The window icon imagedata, or nil of no icon has been set with love.window.setIcon.'
                        }
                    }
                }
            }
        },
        {
            name = 'getMode',
            description = 'Returns the current display mode.',
            functions = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'width',
                            description = 'Display width.'
                        },
                        {
                            type = 'number',
                            name = 'height',
                            description = 'Display height.'
                        },
                        {
                            type = 'boolean',
                            name = 'fullscreen',
                            description = 'Fullscreen (true) or windowed (false).'
                        },
                        {
                            type = 'boolean',
                            name = 'vsync',
                            description = 'True if vertical sync is enabled or false if disabled.'
                        },
                        {
                            type = 'number',
                            name = 'fsaa',
                            description = 'The number of FSAA samples.'
                        }
                    }
                }
            }
        },
        {
            name = 'getPixelScale',
            description = 'Gets the scale factor associated with the window. In Mac OS X with the window in a retina screen and the highdpi window flag enabled this will be 2.0, otherwise it will be 1.0.\n\nThe scale factor is used to display graphics at a size the user is expecting, rather than the size of the pixels. On retina displays with the highdpi window flag enabled, the pixels in the window are 2x smaller than the scale of the normal content on the screen, so love.window.getPixelScale will return 2.\n\nThe units of love.graphics.getWidth, love.graphics.getHeight, love.mouse.getPosition, and mouse events are always in terms of pixels.',
            functions = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'scale',
                            description = 'The pixel scale factor associated with the window.'
                        }
                    }
                }
            }
        },
        {
            name = 'getWidth',
            description = 'Gets the width of the window.',
            functions = {
                {
                    returns = {
                        {
                            type = 'number',
                            name = 'width',
                            description = 'The width of the window.'
                        }
                    }
                }
            }
        },
        {
            name = 'hasFocus',
            description = 'Checks if the game window has keyboard focus.',
            functions = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'focus',
                            description = 'True if the window has the focus or false if not.'
                        }
                    }
                }
            }
        },
        {
            name = 'hasMouseFocus',
            description = 'Checks if the game window has mouse focus.',
            functions = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'focus',
                            description = 'True if the window has mouse focus or false if not.'
                        }
                    }
                }
            }
        },
        {
            name = 'isCreated',
            description = 'Checks if the window has been created.',
            functions = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'created',
                            description = 'True if the window has been created, false otherwise.'
                        }
                    }
                }
            }
        },
        {
            name = 'isVisible',
            description = 'Checks if the game window is visible.\n\nThe window is considered visible if it\'s not minimized and the program isn\'t hidden.',
            functions = {
                {
                    returns = {
                        {
                            type = 'boolean',
                            name = 'visible',
                            description = 'True if the window is visible or false if not.'
                        }
                    }
                }
            }
        },
        {
            name = 'minimize',
            description = 'Minimizes the window to the system\'s task bar / dock.',
            functions = {
                {}
            }
        },
        {
            name = 'setFullscreen',
            description = 'Enters or exits fullscreen. The display to use when entering fullscreen is chosen based on which display the window is currently in, if multiple monitors are connected.\n\nIf fullscreen mode is entered and the window size doesn\'t match one of the monitor\'s display modes (in normal fullscreen mode) or the window size doesn\'t match the desktop size (in \'desktop\' fullscreen mode), the window will be resized appropriately. The window will revert back to its original size again when fullscreen mode is exited using this function.',
            functions = {
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'fullscreen',
                            description = 'Whether to enter or exit fullscreen mode.'
                        }
                    },
                    returns = {
                        {
                            type = 'boolean',
                            name = 'success',
                            description = 'True if successful, false otherwise.'
                        }
                    }
                },
                {
                    arguments = {
                        {
                            type = 'boolean',
                            name = 'fullscreen',
                            description = 'Whether to enter or exit fullscreen mode.'
                        },
                        {
                            type = 'FullscreenType',
                            name = 'fstype',
                            description = 'The type of fullscreen mode to use.'
                        }
                    },
                    returns = {
                        {
                            type = 'boolean',
                            name = 'success',
                            description = 'True if successful, false otherwise.'
                        }
                    }
                }
            }
        },
        {
            name = 'setIcon',
            description = 'Sets the window icon until the game is quit. Not all operating systems support very large icon images.',
            functions = {
                {
                    arguments = {
                        {
                            type = 'ImageData',
                            name = 'imagedata',
                            description = 'The window icon image.'
                        }
                    },
                    returns = {
                        {
                            type = 'boolean',
                            name = 'success',
                            description = 'Whether the icon has been set successfully.'
                        }
                    }
                }
            }
        },
        {
            name = 'setMode',
            description = 'Changes the display mode.\n\nIf width or height is 0, the width or height of the desktop will be used.',
            functions = {
                {
                    arguments = {
                        {
                            type = 'number',
                            name = 'width',
                            default = 'Screen width.',
                            description = 'Display width.'
                        },
                        {
                            type = 'number',
                            name = 'height',
                            default = 'Screen height.',
                            description = 'Display height.'
                        },
                        {
                            type = 'table',
                            name = 'flags',
                            description = 'The flags table.',
                            table = {
                                {
                                    type = 'boolean',
                                    name = 'fullscreen',
                                    default = 'false',
                                    description = 'Fullscreen (true), or windowed (false).'
                                },
                                {
                                    type = 'FullscreenType',
                                    name = 'fullscreentype',
                                    default = '"normal"',
                                    description = 'The type of fullscreen to use.'
                                },
                                {
                                    type = 'boolean',
                                    name = 'vsync',
                                    default = 'true',
                                    description = 'True if LÖVE should wait for vsync, false otherwise.'
                                },
                                {
                                    type = 'number',
                                    name = 'fsaa',
                                    default = '0',
                                    description = 'The number of antialiasing samples.'
                                },
                                {
                                    type = 'boolean',
                                    name = 'resizable',
                                    default = 'false',
                                    description = 'True if the window should be resizable in windowed mode, false otherwise.'
                                },
                                {
                                    type = 'boolean',
                                    name = 'borderless',
                                    default = 'false',
                                    description = 'True if the window should be borderless in windowed mode, false otherwise.'
                                },
                                {
                                    type = 'boolean',
                                    name = 'centered',
                                    default = 'true',
                                    description = 'True if the window should be centered in windowed mode, false otherwise.'
                                },
                                {
                                    type = 'number',
                                    name = 'display',
                                    default = '1',
                                    description = 'The index of the display to show the window in, if multiple monitors are available.'
                                },
                                {
                                    type = 'number',
                                    name = 'minwidth',
                                    default = '1',
                                    description = 'The minimum width of the window, if it\'s resizable. Cannot be less than 1.'
                                },
                                {
                                    type = 'number',
                                    name = 'minheight',
                                    default = '1',
                                    description = 'The minimum height of the window, if it\'s resizable. Cannot be less than 1.'
                                },
                                {
                                    type = 'boolean',
                                    name = 'highdpi',
                                    default = 'false',
                                    description = 'True if high-dpi mode should be used on Retina displays in OS X. Does nothing on non-Retina displays.'
                                },
                                {
                                    type = 'boolean',
                                    name = 'srgb',
                                    default = 'false',
                                    description = 'True if sRGB gamma correction should be applied when drawing to the screen.'
                                }
                            }
                        }
                    },
                    returns = {
                        {
                            type = 'boolean',
                            name = 'success',
                            description = 'True if successful, false otherwise.'
                        }
                    }
                }
            }
        },
        {
            name = 'setTitle',
            description = 'Sets the window title.',
            functions = {
                {
                    arguments = {
                        {
                            type = 'string',
                            name = 'title',
                            description = 'The new window title.'
                        }
                    }
                }
            }
        }
    },
    enums = {
        {
            name = 'FullscreenType',
            description = 'Types of fullscreen modes.\n\nIn normal fullscreen mode, if a window size is used which does not match one of the monitor\'s supported display modes, the window will be resized to the next largest display mode.\n\nNormal fullscreen mode is sometimes avoided by users because it can cause issues in some window managers and with multi-monitor setups. In OS X it prevents switching to a different program until fullscreen mode is exited. The "desktop" fullscreen mode generally avoids these issues.',
            constants = {
                {
                    name = 'normal',
                    description = 'Standard fullscreen mode. Changes the display mode (actual resolution) of the monitor.'
                },
                {
                    name = 'desktop',
                    description = 'Sometimes known as borderless fullscreen windowed mode. A borderless screen-sized window is created which sits on top of all desktop GUI elements (such as the Windows taskbar and the Mac OS X dock.) The window is automatically resized to match the dimensions of the desktop, and its size cannot be changed.'
                }
            }
        }
    }
}