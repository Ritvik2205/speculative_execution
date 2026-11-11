.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 135
xor esi, 66
sub bl, -89
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and al, 49
neg edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, bl
test dx, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmp rax, 2052654950
test dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub ax, 17434
btc rdx, 178
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
sub esi, edi
sub rcx, -99
btc edi, ecx
cmovnb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovo ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
or bl, cl
add cl, -9
add rdx, rsi
sbb cx, 29
add bl, bl
btr rdi, 61
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
