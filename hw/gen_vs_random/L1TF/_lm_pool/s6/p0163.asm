.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
sub dil, al
xor sil, al
or dx, 55
cmp sil, -11
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and si, 50
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
cmovb cx, di
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test esi, ecx
lea cx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
