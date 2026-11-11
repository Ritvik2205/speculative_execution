.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul esi, esi, -106
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
lea rsi, qword ptr [rdi + rsi]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bswap rax
or bl, dl
movzx rdi, dx
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
