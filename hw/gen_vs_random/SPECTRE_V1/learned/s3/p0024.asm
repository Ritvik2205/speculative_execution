.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rax, 900122030
test al, 42
test al, -126
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
test cl, -24
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sub cl, bl
cmp dl, cl
sbb al, 49
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
