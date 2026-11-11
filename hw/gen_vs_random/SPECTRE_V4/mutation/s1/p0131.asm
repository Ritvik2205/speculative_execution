.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -59 # instrumentation
movsx edi, bl
cmovno esi, edi
sbb dl, cl
cmp dil, 101
test dil, -26
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovbe rsi, rax
mov cl, 14
and ebx, -4
adc rax, 1690546225
sub al, dl
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add al, cl
cmovbe eax, esi
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, 87 # instrumentation
cmovz edx, ecx
sub rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
sub dl, bl
test al, 18
btc rdx, rsi
and dl, cl
add al, bl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
mov bl, al
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and al, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
sbb al, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
cmovnl bx, bx
sbb si, si
cmp cl, 100
inc rax
and rdi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
add cl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
imul edx
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 0
sub eax, -865916088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
