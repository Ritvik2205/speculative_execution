.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
or al, cl
cmp rax, -47
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
inc edi
inc ax
test ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
add cl, 62 # instrumentation
cmovnz di, di
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
btc rcx, rbx
add cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
test bl, 110
movsx rdx, sil
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
adc eax, 1019803307
sbb al, 102
cmovns ax, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc edx, -125
sbb eax, 426996540
and bl, bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
sub rbx, rbx
adc ecx, 114
cmovo edi, ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
btc rcx, rdx
or ax, 48
dec edi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
xor cl, -73
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
cmovnle rax, rbx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
