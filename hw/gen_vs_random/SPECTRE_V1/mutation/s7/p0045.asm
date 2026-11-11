.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -93
not eax
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmp bl, dl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
mul si
sub cl, al
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 90
setnp cl
add dl, bl
bts di, bx
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
sets dl
jmp .bb_0.2
.bb_0.2:
cmp edx, ecx
imul rbx
btr bx, 144
sub cl, dl
setp dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
lea bx, qword ptr [rbx + rsi]
movsx si, cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
cmovle dx, dx
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
