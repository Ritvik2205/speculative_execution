.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 66
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
or edi, 88
lea rdx, qword ptr [rbx + rdi]
or dl, sil
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
cmovz si, ax
bts esi, ecx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
or sil, -8
cmovnz dx, di
cmovnle rsi, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor dl, dl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
btc rbx, 81
adc bx, 77
cmovnb dx, di
sbb eax, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
