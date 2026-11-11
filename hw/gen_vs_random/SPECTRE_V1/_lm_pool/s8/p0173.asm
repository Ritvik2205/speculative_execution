.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
xchg dil, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
lea di, qword ptr [rbx + rdx + 85]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
lea di, qword ptr [rcx + rdx + 48]
sub sil, -18
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 37
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
test sil, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
