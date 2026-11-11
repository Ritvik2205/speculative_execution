.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 89
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
cmp sil, -11
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test bl, 84
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
