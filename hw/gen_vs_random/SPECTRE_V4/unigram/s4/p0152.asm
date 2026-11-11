.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, bx
sub ecx, eax
cmovnb cx, cx
xor al, 59
test ecx, 93
cmovz ecx, ecx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
add cx, 63
cmovns di, dx
movsx edi, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
cmovb ebx, esi
adc al, dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 42
bts edx, 47
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
mov al, 62
or cx, ax
or ax, -15282
movzx rdx, al
cmp rsi, 42
sub al, 119
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 29
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
add ax, 28666
bt ebx, ecx
cmovnle dx, dx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 77
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 35
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
xor cl, -85
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
xchg rax, rdx
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
adc dl, al
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
bt ax, 26
sbb al, -62
xor bx, 98
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sbb bl, dl
neg edi
cmovnbe rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
