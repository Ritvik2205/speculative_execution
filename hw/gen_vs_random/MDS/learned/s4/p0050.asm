.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
test dil, -80
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and dil, dil
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and al, bl
bt bx, cx
or bl, 127
test sil, 17
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
