.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
or dil, dil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
bt rdx, 56
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
