.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
or dil, sil
xor bl, cl
sbb ebx, 9
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dl, dil
bts eax, 232
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
