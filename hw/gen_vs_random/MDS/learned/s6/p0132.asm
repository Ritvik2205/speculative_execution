.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
or sil, bl
bts rsi, 221
or al, 54
test dl, sil
btr rax, 209
and ax, 5001
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
test al, dl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and dil, al
or al, 37
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
btr bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
