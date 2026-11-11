.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
dec dil
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 12
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
lea bx, qword ptr [rdx + rdi + 52]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and al, -68
xor bl, al
neg rdi
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
