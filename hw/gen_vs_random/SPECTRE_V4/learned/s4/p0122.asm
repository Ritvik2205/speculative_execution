.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
cmp dl, al
dec al
sbb dil, 77
sub ax, -1908
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
not bl
add al, -127
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
