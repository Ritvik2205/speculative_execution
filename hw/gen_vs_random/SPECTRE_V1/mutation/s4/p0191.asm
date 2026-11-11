.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
lea rsi, qword ptr [rdi + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
imul esi, esi, -106
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movzx rdi, dx
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
bswap rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
