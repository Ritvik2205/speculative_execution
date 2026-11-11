.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
sub al, 99
btc rsi, rax
and rax, 2
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 73
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
sbb al, sil
not ax
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
btc rbx, 81
add cl, -117 # instrumentation
cmovs rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmovnb ebx, eax
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
xor cl, -101
sbb dl, bl
add dl, -114 # instrumentation
cmovl si, bx
add dil, dil
sub ecx, ebx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
add al, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
movzx ax, dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
add cl, -21 # instrumentation
adc rbx, 87
add bl, -115 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
add rax, 89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
or edx, -127
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 9
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
