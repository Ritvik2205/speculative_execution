.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdi, 13
add cl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
sub dil, cl
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
xor sil, bl
cdq
dec esi
add bl, 111 # instrumentation
cmovs rbx, rbx
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rbx + rdx]
test sil, 29
lea ebx, qword ptr [rax + rbx]
xor ax, 30996
xchg cl, al
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
sub dl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
