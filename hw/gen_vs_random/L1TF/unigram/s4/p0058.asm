.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
add cl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
xor sil, dil
test ebx, 95
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], edx
add cl, 65 # instrumentation
cmovo rcx, rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 11
sub eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 23
xor al, cl
lea rdi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
