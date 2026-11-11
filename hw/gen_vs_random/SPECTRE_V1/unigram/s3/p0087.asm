.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
add al, -94 # instrumentation
cmovnle rdi, rax
mul dil
cmovl di, cx
add ecx, 75
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add rcx, 23
sub sil, al
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
xor al, bl
cmp rax, -1877933118
sbb dl, 127
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
