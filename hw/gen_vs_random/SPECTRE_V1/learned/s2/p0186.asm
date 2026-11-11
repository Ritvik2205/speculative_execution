.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub dl, al
or dl, 41
and ax, 2806
lea dx, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
mov cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
