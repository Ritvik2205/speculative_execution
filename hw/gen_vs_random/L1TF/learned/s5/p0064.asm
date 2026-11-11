.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
mov dl, 121
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test dl, -37
lea si, qword ptr [rcx]
bt ebx, edi
sub dil, -70
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dx, 36
cmp dil, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
