.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add bl, -89 # instrumentation
sbb ebx, edx
test al, 48
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -71
cmovno ax, di
test rcx, -1420345926
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
btr edx, 166
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt di, 157
adc eax, 56
cmovns rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
imul al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
lea edi, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
cmp ax, -11439
lea dx, qword ptr [rcx + rbx + 54281]
bt ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
neg rdx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
