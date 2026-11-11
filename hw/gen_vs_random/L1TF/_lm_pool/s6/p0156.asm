.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test bl, 84
add rcx, 41
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
add sil, -61
btc cx, dx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 53
jmp .bb_0.2
.bb_0.2:
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
