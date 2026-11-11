.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
xchg esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
sbb dl, -26
lea rdx, qword ptr [rdi + rax]
test bl, 45
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
inc esi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
lea rsi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
