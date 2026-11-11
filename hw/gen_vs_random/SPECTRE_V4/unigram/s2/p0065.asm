.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dx, 93
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
bt esi, ebx
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
movzx edx, bl
xor bl, 93
adc si, 45
sub al, 50
xor sil, al
add cl, -82 # instrumentation
sbb bx, di
cmovs rbx, rax
movsx esi, ax
add cl, -117 # instrumentation
cmovs rdx, rax
add sil, dil
adc al, cl
xchg rcx, rsi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
mul dl
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and ecx, 34
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
bts rdx, 74
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 81
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
add dl, 41
cmp rdx, 42
adc dil, bl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 44
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
add cl, 23
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
movsx rcx, dx
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 17
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
not bl
or dx, si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 6
cmovnbe rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
