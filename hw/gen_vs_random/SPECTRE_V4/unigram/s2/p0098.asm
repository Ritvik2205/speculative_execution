.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 126
movzx rsi, bx
add ecx, 99
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
adc al, bl
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
not cl
add dl, -40 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
cmovno bx, bx
movzx eax, dl
mul ecx
sbb cl, 12
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 37
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
xchg rax, rdi
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 83
movzx esi, al
or dx, 24
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
cmovl ebx, edx
mov dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
xor rdx, 106
sbb eax, 316213929
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
inc dil
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
cmovnz eax, edx
xchg bx, di
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
imul dx
xor dl, al
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovb rdx, rbx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
sub rcx, rcx
inc edx
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
or bl, dil
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
adc dl, sil
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
