.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -18
xor ax, 24729
and sil, dil
xor bl, cl
cmp sil, dl
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
btc cx, dx
test sil, 42
cmovns eax, eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
or al, -8
and si, di
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
bt si, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 72
cmovz esi, edx
and al, dil
bt edx, 69
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
