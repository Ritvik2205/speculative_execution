.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
lea ebx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
cmovle ax, dx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
or al, 19
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dil, al
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
