.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
or dl, -21
or si, -12
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 11
cmovl rax, rdx
xor al, dl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
bt esi, 3
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
or si, -12
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
xor al, cl
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
