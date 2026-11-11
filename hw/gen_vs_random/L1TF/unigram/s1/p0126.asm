.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
cmp dil, 52
cmovs ecx, edx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
add dl, 6 # instrumentation
cmovl ecx, edx
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
add bl, -54 # instrumentation
setz dil
add bl, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
add dl, -57 # instrumentation
setz dl
jmp .bb_0.1
.bb_0.1:
setl bl
cmp bl, cl
mov al, dl
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
