.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 75
cmovno rax, rax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
add cl, 32 # instrumentation
cmovnbe rcx, rdi
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
xor dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 92
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
or bx, 9
sbb bl, 79
not al
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
