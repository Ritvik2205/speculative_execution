.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
cmp dil, 63
mov bl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 12
sbb cl, al
jmp .bb_0.4
.bb_0.4:
lea rax, qword ptr [rcx]
dec bl
sub dl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
