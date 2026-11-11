.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 92
test bl, 45
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
dec ecx
cmovb bx, dx
lea bx, qword ptr [rax + rbx + 16]
and cl, cl
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
cmovle rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
