.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
sub dil, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -71
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
cmp dil, -78
cmp di, 60
sbb eax, 100
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
add bl, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
