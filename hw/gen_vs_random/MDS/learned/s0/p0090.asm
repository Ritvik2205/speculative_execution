.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
btc dx, ax
and cl, -3 # instrumentation
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
or bl, 84
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and ax, 30884
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
cmovnle rdi, rsi
or sil, -8
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
neg di
and dil, 76
and rcx, 58
imul si, ax, 45
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
btc rbx, rax
jmp .bb_0.2
.bb_0.2:
mov bx, 95
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
or ax, -4635
bt rax, rdx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 37
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
lea edi, qword ptr [rdx]
xor dil, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
neg rdi
and cl, 40
not edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
