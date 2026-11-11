.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 46
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and dil, bl
add al, 40
xor di, bx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
adc dl, bl
or sil, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
