.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
test al, -99
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and al, -54
add al, bl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmovb si, ax
sub al, 63
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
