.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and sil, -90
btr bx, cx
jmp .bb_0.1
.bb_0.1:
test al, -104
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
cmp sil, cl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
test al, -32
bt edx, ecx
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
