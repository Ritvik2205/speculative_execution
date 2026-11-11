.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 34
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, dl
xor dil, bl
cmovb ax, cx
xor rcx, rsi
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
