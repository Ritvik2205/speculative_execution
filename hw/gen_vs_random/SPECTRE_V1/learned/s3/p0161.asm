.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea edi, qword ptr [rdx + rbx + 82]
cmp bx, 22
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmovno di, bx
sbb cl, bl
bswap rdx
sub bl, al
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
