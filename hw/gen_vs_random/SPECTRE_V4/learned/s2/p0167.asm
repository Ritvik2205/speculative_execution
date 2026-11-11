.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, bl
test dl, cl
test al, 80
cmp sil, 88
setnb cl
and ecx, edx
lea rbx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
test bl, dl
dec dl
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
cmovp ax, di
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
xor al, 29
cmovnl si, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 95
not si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rcx, -102
not rdi
adc bx, -89
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add edx, 87
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
not rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
test rcx, -2118888343
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 9
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc bl, al
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
sub rdx, 22
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 58
cmovl rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
