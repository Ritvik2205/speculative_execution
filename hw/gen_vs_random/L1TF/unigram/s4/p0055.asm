.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, dl
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
or rbx, 81
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 73
imul si, dx, 99
mov al, 79
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
btc si, 31
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
