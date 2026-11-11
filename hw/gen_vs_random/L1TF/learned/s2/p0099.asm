.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rdx, rcx
or bl, 114
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor bl, dil
and bl, 89
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
lea ebx, qword ptr [rdx + rdi]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
