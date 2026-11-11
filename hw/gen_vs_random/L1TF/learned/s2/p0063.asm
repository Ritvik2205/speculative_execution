.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
add dl, -70
and cl, 88
add sil, -61
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 45
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
test bl, 45
sub al, sil
xor cl, 89
xor bl, 38
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
cmovnz rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
