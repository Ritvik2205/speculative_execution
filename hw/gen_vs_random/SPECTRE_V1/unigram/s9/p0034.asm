.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
lea rax, qword ptr [rbx + rax + 30]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, -98
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ecx, 84
bswap rsi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
lea dx, qword ptr [rsi + rdx + 88]
and cx, 47
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
