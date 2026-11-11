.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
xor bl, 93
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
xor cl, -85
adc edi, 73
and rcx, -102
cmovb cx, cx
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
bts rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
test di, si
and al, sil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
sub eax, 2030845821
or rdi, rdx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
xchg edx, eax
add al, 56 # instrumentation
cmovle rdx, rax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 84
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
not si
and bl, sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 14
xor sil, 56
sub bl, al
imul rdi, rax, 1
cmovnp rsi, rsi
or ax, si
or di, 75
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 59
adc sil, cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, ecx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 89
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
sbb al, -62
inc edi
cmovb rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
