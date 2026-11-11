.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
cmovnp cx, bx
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and dl, 53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
bt rax, rcx
cmovbe rax, rbx
xor dl, -59
xor bx, 37
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
cmovs esi, edx
cmovnbe ebx, edi
or bl, -125
and rdx, 28
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
cmovb rdi, rax
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
