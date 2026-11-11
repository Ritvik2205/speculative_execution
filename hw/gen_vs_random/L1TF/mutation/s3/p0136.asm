.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdx]
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
add al, bl
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
btr dx, ax
lea di, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
sbb cl, -123
lea rdx, qword ptr [rcx]
btr rdx, 161
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and si, bx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
