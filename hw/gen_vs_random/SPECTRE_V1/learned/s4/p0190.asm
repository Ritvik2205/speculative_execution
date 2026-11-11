.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea eax, qword ptr [rbx]
test sil, 47
xor bl, -38
lea dx, qword ptr [rax]
inc ecx
add dl, 47
lea ax, qword ptr [rcx + rsi + 92]
test cl, -120
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
lea rdx, qword ptr [rax + rdi + 76]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
