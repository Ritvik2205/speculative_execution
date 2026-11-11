.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, di
add bl, -50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
setnp al
cmp bl, dl
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
imul al
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
btr bx, cx
mul dil
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
