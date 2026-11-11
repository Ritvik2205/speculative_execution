.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
add dl, 47
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovs ax, bx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
cmovnle rsi, rdx
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
