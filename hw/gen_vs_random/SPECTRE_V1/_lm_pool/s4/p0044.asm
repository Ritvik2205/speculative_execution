.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
lea cx, qword ptr [rsi]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, -6
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp rsi, 53
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
cmp al, 77
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 42
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 61
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
