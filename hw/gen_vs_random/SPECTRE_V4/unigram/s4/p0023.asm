.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 64
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rsi
sbb dil, 48
mul dl
adc dl, al
test edi, -1380439873
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
cmovb bx, di
cmp dl, 45
sbb dl, 75
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
bts di, 30
sub al, sil
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 2
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sub dil, -40
xor dl, -123
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and eax, -1572488789
add rcx, 32
cmp di, -8
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
cmovle rdi, rdi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 7
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
add cl, -123 # instrumentation
sbb dl, 28
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
adc al, 43
adc bx, 52
btr di, 245
bts ecx, 0
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
btc rax, rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
adc dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
