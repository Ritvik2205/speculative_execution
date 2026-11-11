.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 54
btr rcx, 158
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
setnz cl
lea edi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
cmovo rdx, rdx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, -31
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
lea bx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
