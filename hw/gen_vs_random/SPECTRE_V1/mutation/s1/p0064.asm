.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
sbb di, -122
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
cmp si, -11
imul al
jle .bb_0.1
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
