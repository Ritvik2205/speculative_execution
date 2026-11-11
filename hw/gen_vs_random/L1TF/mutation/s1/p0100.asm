.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
lea rdx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
add al, bl
lea di, qword ptr [rbx]
btr rdx, 161
btr dx, ax
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and si, bx
lea bx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
sbb cl, -123
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
cmovnl ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
xor ax, -27503
mov al, 79
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
