.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and cl, al
dec edi
btc rcx, rdx
cmp rax, 2052654950
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sbb al, -43
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
adc edx, -125
add cl, 62 # instrumentation
cmovnz di, di
sub rbx, rbx
test ebx, edi
inc ax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
cmovo edi, ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
adc eax, 917540672
movsx rdx, sil
adc bl, dl
xor cl, -73
adc ecx, 55
cmovns ax, si
test bl, 78
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
or al, cl
or ax, -30990
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], di
btc rcx, rbx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
add cl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
inc edi
sbb eax, 40509622
cmovnle rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
sub cl, cl
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and bl, bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
