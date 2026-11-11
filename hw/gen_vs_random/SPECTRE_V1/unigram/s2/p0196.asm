.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
xor bl, -38
imul cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add bl, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
mov eax, edi
xchg bl, bl
lea edi, qword ptr [rax + rdi]
cmp al, 13
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 89
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
cmp dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
