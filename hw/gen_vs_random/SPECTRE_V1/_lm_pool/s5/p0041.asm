.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
sub al, bl
sub rax, -1628299544
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test sil, dl
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 2134929425
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
