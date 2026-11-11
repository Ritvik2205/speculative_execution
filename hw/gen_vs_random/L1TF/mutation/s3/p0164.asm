.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rsi + 8931]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
cmp edi, esi
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
add cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], cx
add bl, -93
jmp .bb_0.1
.bb_0.1:
xor bl, al
setz al
lea rax, qword ptr [rsi + rdx]
mul dil
add cl, -117 # instrumentation
lea rbx, qword ptr [rcx]
lea ax, qword ptr [rbx + rax]
cmovs rax, rdi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
mul rax
test al, 56
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
mov al, 79
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
add sil, 18
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add eax, 760523556
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
