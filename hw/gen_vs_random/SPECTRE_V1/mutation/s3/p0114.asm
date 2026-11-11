.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
imul esi
sub cl, cl
sbb ax, -17107
cmovno di, bx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -95 # instrumentation
lea bx, qword ptr [rdx + rdx + 34528]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
or rcx, rdx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add rax, 977059290
inc esi
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
