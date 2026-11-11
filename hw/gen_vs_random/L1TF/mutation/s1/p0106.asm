.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, 92
add bl, -87 # instrumentation
cmovnle rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
sub dl, al
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
add al, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
lea rcx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
