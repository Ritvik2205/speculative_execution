.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, esi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 35
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
sub al, dil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
add cl, dl
lea ecx, qword ptr [rcx + rdi + 65137]
cbw
xor rdx, 30
lea dx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
add sil, al
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
