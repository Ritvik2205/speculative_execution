.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 78
dec bl
adc dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
movsx rsi, bx
add dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmovnz bx, di
btc rax, rax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 1
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmovz rbx, rdi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
mov ebx, 817819255
bswap edx
xchg esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
dec al
cmovl edi, eax
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
cmovb rsi, rsi
movsx ecx, bl
dec al
dec edx
xor bl, cl
xchg bl, al
xor dl, al
mul sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
add cl, -65 # instrumentation
adc al, cl
add si, ax
sub cl, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
xor al, 118
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rbx, rax
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
add dl, bl
add ecx, esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
