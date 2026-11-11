.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
or al, 16
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor dil, -70
test dil, 46
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jmp .bb_0.2
.bb_0.2:
xor cl, 15
xor dl, -43
or rax, -689609688
xor sil, -46
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
test eax, 343548072
and cl, bl
jmp .bb_0.3
.bb_0.3:
or al, cl
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
