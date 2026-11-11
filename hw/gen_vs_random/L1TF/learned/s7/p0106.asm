.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
or al, -2
test bl, 84
and bl, sil
and eax, -409673666
cmp si, 39
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
