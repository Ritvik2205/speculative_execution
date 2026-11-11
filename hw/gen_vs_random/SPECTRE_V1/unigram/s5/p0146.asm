.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
add al, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], -84
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
imul edx, esi
and dil, al
sub cl, al
cmp ecx, edx
lea ax, qword ptr [rcx + rbx]
cmp sil, al
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
setnle cl
add al, -65
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
