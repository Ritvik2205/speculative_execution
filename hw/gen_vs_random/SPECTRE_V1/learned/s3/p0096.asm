.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
or esi, -74
and eax, 933895314
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
xor rcx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
