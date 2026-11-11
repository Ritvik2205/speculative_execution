.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
xchg ebx, esi
and al, -68
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdi]
not edx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rbx
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 13
and bl, dl
or dx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
