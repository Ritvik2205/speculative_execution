.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
add sil, -61
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and cl, cl
xchg bl, cl
jmp .bb_0.1
.bb_0.1:
test dil, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
test edx, 1891691791
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
