.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
mov bl, cl
lea dx, qword ptr [rax + rcx + 99]
mov dil, al
and al, 33
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
add cl, dl
inc ecx
sbb eax, -108
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
