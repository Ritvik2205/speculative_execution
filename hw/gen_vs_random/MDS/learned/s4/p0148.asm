.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 71
and ax, 27170
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 31
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
or bl, dil
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
