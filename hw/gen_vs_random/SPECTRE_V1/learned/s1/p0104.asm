.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor rsi, 30
mov dl, bl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
cmp rbx, 35
cmp dil, al
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
add al, 10
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or rbx, 63
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 97
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
