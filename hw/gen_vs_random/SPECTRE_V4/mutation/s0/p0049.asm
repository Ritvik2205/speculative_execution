.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
test dx, cx
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
add rdx, rsi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
add cl, -9
or bl, cl
cmovo ebx, eax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
btr rdi, 145
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
sbb cx, 29
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
cmovnb eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
sub rcx, 126
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
add bl, bl
sub esi, edi
xor esi, 66
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
test dl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
btc edi, ecx
cmovp rax, rdx
adc dl, bl
sub ax, 25338
xor bl, bl
sub bl, -89
cmp rax, -1070057082
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 135
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
neg edx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
btc rdx, 130
cmp si, 109
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and al, 5
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
