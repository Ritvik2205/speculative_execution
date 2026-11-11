.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and bl, 89
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
add sil, -61
jmp .bb_0.2
.bb_0.2:
xchg dil, bl
and al, bl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
