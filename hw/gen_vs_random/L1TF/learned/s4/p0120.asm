.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
xor rdi, rdi
cmovp edx, ebx
lea bx, qword ptr [rax + rdi]
setnle al
add bl, -93
neg di
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 58
jmp .bb_0.1
.bb_0.1:
inc sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
