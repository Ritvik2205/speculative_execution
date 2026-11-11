.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], ax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
sbb dl, al
not edx
cmp ax, -11439
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
sub sil, cl
and cx, 53
add ax, 8031
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
