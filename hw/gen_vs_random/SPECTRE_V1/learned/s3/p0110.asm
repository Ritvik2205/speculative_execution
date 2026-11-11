.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
lea di, qword ptr [rcx]
lea rax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
or dl, bl
sbb bl, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -36
inc eax
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
