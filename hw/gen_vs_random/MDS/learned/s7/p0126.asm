.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 70
and sil, -9
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor dl, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test cl, al
or sil, -49
jmp .bb_0.1
.bb_0.1:
or al, cl
jmp .bb_0.2
.bb_0.2:
test ecx, -1843375753
jmp .bb_0.3
.bb_0.3:
test al, dl
and rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
