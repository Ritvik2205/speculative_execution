.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add rax, 6
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
or al, dl
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
lea eax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
