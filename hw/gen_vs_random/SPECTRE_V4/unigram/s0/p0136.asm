.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -2118888343
cmovnle di, si
sbb bl, -94
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnl rax, rbx
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and dl, 82
xor al, cl
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
dec rdi
adc ax, ax
add bl, -72
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
imul bx
not rdx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 24
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
xchg ebx, ecx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 21
sbb dil, dl
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
add bl, -18 # instrumentation
mov rsi, rbx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
sub edx, eax
xor sil, 56
or al, dil
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
dec cl
movzx esi, cl
sbb al, 123
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
or esi, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
