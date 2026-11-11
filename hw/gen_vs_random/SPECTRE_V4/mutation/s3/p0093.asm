.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 45
add rsi, -100
test al, dil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
mov rdx, -3284511739993892328
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
dec ax
and ax, 13045
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
neg rdi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
cmovp di, di
test dl, -125
imul di
sbb al, 43
or si, 85
btc dx, si
inc rsi
adc cl, al
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
test rbx, 1219566903
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
imul esi, edx
bt rsi, 153
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
adc cl, al
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
add bl, cl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmp dx, di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
