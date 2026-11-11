.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
adc edi, 73
adc ebx, 117
or eax, 2007177863
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
sbb dl, dil
bts edx, ecx
xor edi, 47
movzx rsi, bl
add dl, 41
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
add dl, -124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
mov rsi, 93
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
mov rdx, 3
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
btc rbx, rdi
cmovnbe rbx, rax
or dl, cl
sub ax, 24441
dec bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
bts edi, 167
movzx cx, dl
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
xchg bl, dl
and al, dil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 22
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 54
xor si, 84
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
cmovb di, di
cmovl rdi, rax
movzx edx, sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
bt ebx, 228
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
