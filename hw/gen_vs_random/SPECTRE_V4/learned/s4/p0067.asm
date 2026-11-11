.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ebx
cmp eax, -1538116527
sub al, 86
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
sub bl, -98
and al, -124
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
test dil, -5
mov al, bl
adc eax, 1378432629
mov al, 82
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
