.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
lea di, qword ptr [rax]
sub al, bl
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
sbb rsi, 9
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc eax
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
or eax, 1276549484
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
