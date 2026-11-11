.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
add edi, 11
sbb eax, 2051746726
cmp al, 81
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
adc dl, al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
btr rdi, rdx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmp rdi, rsi
cmovp esi, esi
add esi, -5
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmovo di, di
mov rdx, 77
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovo rcx, rcx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
or ax, -12775
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add bl, al
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
add sil, 110
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
sbb sil, 108
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
add al, 5
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add ebx, edx
sub dl, 43
cmovnl rbx, rdx
lea si, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
cmovnbe si, di
movsx rsi, bx
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
or bl, sil
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
