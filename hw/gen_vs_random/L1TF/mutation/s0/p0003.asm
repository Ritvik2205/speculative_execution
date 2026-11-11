.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
xor si, -50
mov dl, -36
movzx ax, al
mul sil
cmp ax, -6940
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 7679
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
add al, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and al, dl
setnz cl
cmp dl, cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
or rax, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
test edi, edx
sbb cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
