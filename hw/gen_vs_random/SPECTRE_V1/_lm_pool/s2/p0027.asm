.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
lea rdx, qword ptr [rcx + rcx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
xor al, al
add cl, -127
add cl, -127
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmp cl, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
