.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
cmovnbe eax, ebx
imul esi, edi, 81
sbb esi, 78
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
movzx ax, bl
xor al, al
and al, -127
mul ax
or dx, 30
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 4
not bx
or al, dl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
sub sil, dil
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
add sil, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
imul cl
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
cmovnp cx, ax
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
test bl, 24
add sil, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
btc bx, 65
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 30
add dl, 31 # instrumentation
cmovnl dx, dx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 61
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 2
btc rcx, 23
sbb dl, -99
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb dil, dl
test eax, -544019457
cmovl rax, rsi
movzx rdx, al
sub si, 60
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
