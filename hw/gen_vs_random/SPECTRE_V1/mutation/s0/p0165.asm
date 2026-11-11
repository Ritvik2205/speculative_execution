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
xor al, -89
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
cmovno si, si
add cx, -103
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
lea rdx, qword ptr [rdx + rsi]
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
