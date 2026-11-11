.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 45
xchg ebx, edx
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
xchg rdi, rsi
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
sbb ecx, 9
sbb dil, al
setp cl
add bl, 70
lea si, qword ptr [rdx + rcx + 12]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
