.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 56
imul al
add rax, -845342150
and dl, -111
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
sub cl, -47
inc ecx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
adc dl, 80
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
