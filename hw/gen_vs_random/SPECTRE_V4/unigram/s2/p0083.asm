.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 119 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
imul ebx, ecx, 38
movzx dx, al
movzx bx, dil
cmovns bx, di
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
imul rdi
sbb dx, 53
dec rax
cmovnb rdx, rsi
imul dx, si
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 61
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
btc rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
or rdx, rax
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 99
bts cx, 10
cmovp rbx, rsi
or ecx, 4
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
cmp dl, 84
movzx esi, cl
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
xchg ebx, eax
add cl, 8
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
sbb rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
test ecx, 37
cmovl rdi, rax
cmovnp ax, di
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
inc edx
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or di, bx
sub al, dl
dec al
cmovns ax, ax
cmovnbe rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
