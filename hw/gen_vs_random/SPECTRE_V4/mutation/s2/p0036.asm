.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp si, 109
sub rcx, -99
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
sbb cx, 106
btr rdi, 61
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], bx
neg edx
adc dl, bl
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
btc edi, ecx
or bl, cl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
sub esi, edi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
sub ax, 24426
add rdx, rsi
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
cmp rax, 1097504565
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
xor esi, -82
bts cx, 135
and al, 5
test dx, cx
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovp rax, rdx
add bl, bl
add cl, -9
btc rdx, 130
cmovo ebx, eax
xor bl, bl
cmovnb eax, edi
sub bl, 56
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
