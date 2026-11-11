.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and bl, 68
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
xor rdx, -59
jmp .bb_0.2
.bb_0.2:
xor al, bl
test ebx, -961564216
test cl, bl
and rax, 4
xor sil, bl
xor bx, 4
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
