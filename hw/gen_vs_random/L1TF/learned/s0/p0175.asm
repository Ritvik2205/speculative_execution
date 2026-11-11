.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
or rax, -263404965
jmp .bb_0.1
.bb_0.1:
or al, -87
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
