.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
add dil, cl
jmp .bb_0.1
.bb_0.1:
imul ecx, edx
jmp .bb_0.2
.bb_0.2:
inc eax
lea rdx, qword ptr [rbx + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
