.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
cmp al, al
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
cmovb si, dx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
adc sil, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmovz eax, eax
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
test eax, edi
cmovnb bx, di
imul eax, edi, 9
or esi, 32
mov sil, 60
or dil, -16
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
cmovnz dx, cx
imul di, di
bswap edi
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
cmovl ecx, esi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
add al, -3
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
test al, 52
sub bl, al
sbb edx, 84
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
cmovnz bx, si
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
sub dil, bl
neg bx
sub rax, 1294268026
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
