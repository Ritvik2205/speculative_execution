.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, 28
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
add cl, -82 # instrumentation
sbb bx, ax
sub edx, edi
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
neg dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 59
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 31
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add cl, -71 # instrumentation
adc cl, dl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
or rax, rdx
sbb bl, 57
xor sil, 56
cmovb edi, edx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
add cl, -21 # instrumentation
adc rax, 28
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 92
sub dl, bl
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
add dl, 31 # instrumentation
cmovnl dx, dx
bts rsi, rcx
cmp sil, 88
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
add dl, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
xor bx, 71
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
xor cx, 77
inc ebx
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 89
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
test dil, dl
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
add sil, cl
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
