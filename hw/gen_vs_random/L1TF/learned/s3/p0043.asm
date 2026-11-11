.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
mul rax
cmovp cx, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
mov al, -26
jmp .bb_0.1
.bb_0.1:
btc cx, 54
jnb .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
cmovs rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
