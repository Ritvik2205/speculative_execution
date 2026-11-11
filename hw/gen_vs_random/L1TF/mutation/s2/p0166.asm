.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rbx]
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
lea bx, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add al, bl
btr rdx, 161
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
lea rdx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and si, bx
sbb cl, 83
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
btr dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
