.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
add al, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
lea rcx, qword ptr [rax]
sbb al, -23
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sub dl, al
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
add bl, -87 # instrumentation
cmovnle rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
