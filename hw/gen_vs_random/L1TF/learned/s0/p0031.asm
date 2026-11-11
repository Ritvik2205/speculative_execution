.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 18
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
add dl, -70
btr cx, bx
add sil, al
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
test bl, 45
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
