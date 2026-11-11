.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rdx
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
or al, cl
cmovo edi, ecx
cmovnle rax, rbx
or ax, 7381
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
adc edx, -125
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
xor cl, -15
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
movsx rdx, sil
sbb al, -4
test bl, -116
inc ax
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
cmovns ax, si
btc rcx, rbx
sbb eax, 426996540
cmp rax, -1070057082
add cl, 62 # instrumentation
cmovnz di, di
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
inc edi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
dec edi
adc eax, -3570960
add cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
and cl, al
and bl, bl
sub cl, cl
sub rbx, rbx
test ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
adc ecx, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
