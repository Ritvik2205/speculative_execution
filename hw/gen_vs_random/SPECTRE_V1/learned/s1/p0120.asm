.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
lea rsi, qword ptr [rbx + rdx + 29]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
cmp cl, dl
add dil, dl
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
