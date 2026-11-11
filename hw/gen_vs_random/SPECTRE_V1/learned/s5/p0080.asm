.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
setnb bl
lea dx, qword ptr [rbx + rdi + 4]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
bt dx, 67
or eax, 848176907
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 1
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
