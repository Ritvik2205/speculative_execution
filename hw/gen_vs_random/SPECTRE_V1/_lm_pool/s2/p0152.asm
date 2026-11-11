.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xor cx, 100
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea cx, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
jnz .bb_0.4
jmp .exit_0
.bb_0.4:
or rdi, 68
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
