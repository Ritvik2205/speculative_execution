.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
sub al, dil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdx
sub al, dl
test bl, -8
cmp dil, -58
xchg rdi, rbx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -111
sub rax, -1628299544
lea dx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
