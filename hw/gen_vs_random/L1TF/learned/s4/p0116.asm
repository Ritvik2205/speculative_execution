.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
xor rax, 20
jmp .bb_0.1
.bb_0.1:
and al, -68
add bl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
jmp .bb_0.2
.bb_0.2:
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
