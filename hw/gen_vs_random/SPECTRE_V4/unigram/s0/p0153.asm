.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdx
xor dl, 99
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
cmovnb rbx, rax
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 41
xor dl, 87
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 7
btc ax, cx
test dil, dil
add rdi, rdx
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 83
xor si, di
imul sil
test rdx, 84
imul cl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
dec dl
xor edx, 86
btc rdx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
cmovnbe rsi, rbx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
cmovl rbx, rax
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
add bl, -72
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
or dl, 56
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
cmovnbe rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
