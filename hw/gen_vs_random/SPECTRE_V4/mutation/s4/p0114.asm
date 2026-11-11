.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add edi, eax
sbb dl, 75
cmovno edx, esi
cmovl rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
and al, -28
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
imul esi, edi, -24
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
add cl, -8 # instrumentation
xchg bl, cl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
imul rdx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and ax, cx
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
or bl, 111
imul dx, di, 53
or al, dl
xchg ebx, eax
cmovnle edi, ebx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
xchg edi, edi
sbb ax, 75
mov bx, 27738
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
bt di, si
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
