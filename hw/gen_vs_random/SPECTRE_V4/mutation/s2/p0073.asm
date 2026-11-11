.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
btc rdx, 178
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub esi, edi
and al, 59
adc dl, bl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
bts cx, 135
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
sub rcx, -74
add bl, bl
add rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
sub bl, -89
sbb cx, 106
btr rdi, 145
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
cmovnb eax, edi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
test dl, al
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
xor bl, bl
cmp rax, -1247892360
cmovo ebx, eax
xor esi, -82
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
btc edi, ecx
add cl, -9
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
test dx, cx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
cmovp rax, rdx
sub ax, -1393
cmp si, 109
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
neg edx
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
