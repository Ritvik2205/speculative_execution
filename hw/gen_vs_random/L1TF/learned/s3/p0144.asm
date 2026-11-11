.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 38
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
add cl, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
add al, dl
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
dec ebx
and di, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
