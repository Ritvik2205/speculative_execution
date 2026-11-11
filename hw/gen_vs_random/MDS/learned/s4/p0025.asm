.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
and al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
test cl, dil
jmp .bb_0.1
.bb_0.1:
and dl, bl
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
