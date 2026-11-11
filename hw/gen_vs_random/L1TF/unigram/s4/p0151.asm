.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
add al, cl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
test si, 64
mov rdx, -1012904117298842753
btc bx, 168
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
lea rdi, qword ptr [rcx + rdi + 98]
lea eax, qword ptr [rdi + rcx + 87]
sbb bl, sil
add dl, 109 # instrumentation
sbb al, 33
mov rax, -6437636498926413678
not eax
lea bx, qword ptr [rax + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
