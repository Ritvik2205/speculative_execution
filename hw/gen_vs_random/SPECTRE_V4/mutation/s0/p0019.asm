.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
sub bl, 56
test dx, cx
btc edi, ecx
btr rdi, 61
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
add bl, bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
cmp rax, 1097504565
neg edx
bts cx, 158
add cl, -9
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
or bl, cl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
btc rdx, 178
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
sub ax, -1393
and al, -118
xor esi, 66
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
sub rcx, -74
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
cmovnb eax, edi
sub esi, edi
cmovo ebx, eax
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
xor bl, bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
test dl, al
adc dl, bl
sbb cx, 106
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
cmovp rax, rdx
cmp si, 109
add rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
