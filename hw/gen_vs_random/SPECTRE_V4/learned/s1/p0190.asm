.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -15653
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
sbb eax, 4
test ax, -5170
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
cmovnl dx, si
btc ebx, ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
sbb al, -47
sub ax, 24441
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
add al, 71 # instrumentation
setp dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
sub al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 64
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and dl, al
or cx, 84
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
bt ebx, esi
adc dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
adc al, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
imul rdi, rbx, 22
cmovno ax, ax
add dl, dl
and rcx, -102
test eax, 1561062795
not dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 17
mov al, 51
cmovns rbx, rax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
