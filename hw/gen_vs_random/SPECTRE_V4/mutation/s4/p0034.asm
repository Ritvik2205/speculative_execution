.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
cmovno edx, esi
cmovnle edi, ebx
imul rdx, rdx
xchg ebx, eax
and ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
or bl, -99
xchg edi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add cl, -8 # instrumentation
xchg bl, cl
and al, 5
bt di, si
sbb ax, 10407
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
cmovl rcx, rdi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edi
mov bx, 27738
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
imul esi, edi, -24
imul dx, di, 53
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
sbb dl, -106
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
add edi, eax
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
