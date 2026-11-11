.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 89
test dl, 84
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
or sil, dl
cmp di, -78
jmp .bb_0.1
.bb_0.1:
cmp eax, -234754587
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
bts si, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
