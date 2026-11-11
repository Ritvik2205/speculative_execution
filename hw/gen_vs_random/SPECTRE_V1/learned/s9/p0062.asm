.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, bx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor eax, 55
xchg bl, al
test al, -126
add al, 3
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
neg rsi
sbb ebx, 69
inc dil
setb al
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
