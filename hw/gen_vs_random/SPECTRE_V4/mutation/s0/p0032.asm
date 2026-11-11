.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 135
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
mov ebx, 51969593
bswap edx
xchg esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
dec al
cmovl edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
xor edi, 127
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
sub si, si
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
sub dl, 107
or eax, ebx
btc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
