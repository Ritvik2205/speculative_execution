.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
btc edx, 169
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
lea rbx, qword ptr [rax + rcx + 69]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sbb edx, -8
sub al, bl
btc dx, bx
lea rsi, qword ptr [rax]
test al, 34
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
