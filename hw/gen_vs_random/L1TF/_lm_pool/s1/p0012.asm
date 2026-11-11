.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and ax, 26813
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
jmp .bb_0.2
.bb_0.2:
test al, 15
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 74
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
