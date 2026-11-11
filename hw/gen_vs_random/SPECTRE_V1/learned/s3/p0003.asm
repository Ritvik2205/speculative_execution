.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47
test al, 59
add al, -13
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
xor al, -74
sub ax, -15315
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
