.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 55
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 67
add dil, dil
movzx dx, dil
cmovns rsi, rbx
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 92
test rdi, -1876639003
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
mov rbx, 9101099553822202722
cmovnb dx, dx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
sbb dil, 47
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
sbb dl, bl
btc eax, 98
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 72
sub rbx, 100
sbb dil, 22
xor dl, dil
bts rdx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 68
adc edx, 12
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 71
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 69
inc edx
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
test dl, sil
imul si, dx
movzx rdi, dl
sbb eax, edx
movzx ecx, cx
movzx di, sil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
