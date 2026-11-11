.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 66
xor bl, bl
add cl, -9
and al, -1
test dl, al
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
sub bl, -89
sub ax, 17434
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
test dx, cx
btc edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
sub esi, edi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
add rdx, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmovnb eax, edi
neg edx
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
cmp rax, 2052654950
or bl, cl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
add bl, bl
sub rcx, -99
bts cx, 135
adc dl, bl
cmp si, 109
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
btr rdi, 61
sbb cx, -114
btc rdx, 130
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
cmovo ebx, eax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
