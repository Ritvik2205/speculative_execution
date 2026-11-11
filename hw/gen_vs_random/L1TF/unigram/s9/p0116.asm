.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
lea eax, qword ptr [rdx + rbx + 22]
neg cl
setnb bl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
inc rdi
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 95
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor cl, 89
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
