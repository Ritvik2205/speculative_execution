.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -20 # instrumentation
adc bl, dl
cmp cl, -105
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
or rdx, rdi
adc bl, 35
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
cmovp rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
add al, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
add al, -79 # instrumentation
adc rbx, 11
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
neg bl
test dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
btc rax, 72
sbb al, 57
cmovno esi, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
sbb dl, 53
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and al, 92
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
cmovl rcx, rdi
mov bx, 27738
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt di, si
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
imul dx, di, 53
xchg edi, edi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -9
sbb ax, 1843
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
