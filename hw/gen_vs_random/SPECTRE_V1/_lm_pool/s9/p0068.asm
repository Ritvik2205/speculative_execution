.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 52
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
sbb ebx, 7
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 15
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
lea rdx, qword ptr [rbx + rax + 80]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
