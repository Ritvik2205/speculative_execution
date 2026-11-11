.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
cmp rdi, 68
lea eax, qword ptr [rdx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rdx + rax + 79]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
loopne .bb_0.3
jmp .bb_0.4
.bb_0.3:
jl .bb_0.4
jmp .exit_0
.bb_0.4:
sbb bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
