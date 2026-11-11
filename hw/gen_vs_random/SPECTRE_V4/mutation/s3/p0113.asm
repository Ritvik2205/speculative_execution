.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
movsx rdx, sil
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
inc ax
cmovns ax, si
or al, cl
sub rbx, rbx
and rax, 0b1111111111111 # instrumentation
and cl, al
xor cl, 13
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
add cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
cmp rax, -2096157586
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
adc eax, 948001339
sub cl, cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
dec edi
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
adc ecx, 114
sbb al, 54
test bl, -116
adc edx, -86
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and bl, bl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
add cl, 62 # instrumentation
cmovnz di, di
test ebx, edi
cmovnle rax, rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
cmovo edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
btc rcx, rdx
sbb eax, 727775941
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
inc edi
btc rcx, rbx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
or ax, -13633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
