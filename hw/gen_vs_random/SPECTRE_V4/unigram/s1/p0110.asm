.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, al
add cl, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
sub rdi, rdx
bts edx, 116
dec rbx
movsx eax, al
bts edx, 116
sub rdi, 105
and ax, bx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
sbb cx, 29
dec cx
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
cmovb cx, di
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rsi
adc al, 41
cmovno rdx, rsi
adc dl, 64
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 59
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 70
adc cl, dil
btc rax, rax
add bl, -30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
or bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
sbb dl, -106
and rcx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
adc dl, 78
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
bt ebx, 12
and al, al
test cl, sil
movzx rcx, ax
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 88
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
