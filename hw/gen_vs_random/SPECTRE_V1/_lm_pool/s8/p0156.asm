.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
sub bl, -19
sub al, -66
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea bx, qword ptr [rax]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
