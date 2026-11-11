.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
xchg edx, ecx
sub rax, -701741274
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 54
and dil, 96
add cl, cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor rbx, 4
btc rcx, rbx
and dx, 1
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 58
cmovns cx, cx
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
sub ebx, 10
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
mul cl
or eax, ebx
bt esi, 227
add sil, 110
imul edi, ebx, 6
dec rbx
or dil, sil
movzx rcx, si
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
imul rcx, rax
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
add bx, 110
add dil, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
sub dl, dl
btc ax, di
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 52
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 83
add dl, 31 # instrumentation
cmovnl si, si
btc dx, 119
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
