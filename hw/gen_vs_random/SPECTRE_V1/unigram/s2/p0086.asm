.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
add rcx, 23
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
add cx, si
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovz rcx, rdx
bts esi, 16
or esi, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
