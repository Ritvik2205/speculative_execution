.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 95
setno cl
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
lea si, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
sbb bl, cl
sub al, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
