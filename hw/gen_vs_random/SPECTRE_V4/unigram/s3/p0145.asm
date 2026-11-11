.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
cmovs rsi, rdi
inc si
neg bl
and dil, dil
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
xor bx, si
cmovbe ax, ax
dec dil
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
mov eax, 522619143
adc dx, 43
and dil, sil
or dil, cl
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
xchg rdi, rsi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb dl, cl
bt eax, 103
cmovnz rbx, rsi
sbb al, 43
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
dec eax
bt bx, si
mov rdi, rsi
cmp rcx, rdx
cmp bl, -16
or dl, dl
cmovb bx, ax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
or edx, -118
bswap edi
cmovb ebx, ecx
mov al, bl
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 19
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test rsi, rax
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
