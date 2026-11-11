.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
lea rsi, qword ptr [rbx]
setnp dl
btr ax, 197
add dx, -90
lea edx, qword ptr [rax + rax + 99]
cmovz edi, edx
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
adc al, dl
lea rax, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmp rdx, -19
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
