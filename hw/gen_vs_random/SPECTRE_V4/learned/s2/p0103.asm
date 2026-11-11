.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
cmovbe di, dx
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
or cl, -104
add dl, bl
sub al, 96
or bl, bl
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
adc al, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
test sil, al
or al, 1
adc al, -59
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
add dl, bl
movzx edx, ax
cmp al, -122
add bl, dl
xor dil, -23
mov sil, bl
or dl, al
adc cl, -4
and sil, cl
imul di, bx, 62
or eax, -612395655
add sil, cl
imul ax, dx, 3
add dl, cl
add al, -29
mov al, 125
sub dl, -16
and al, -87
xor eax, 365940537
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
