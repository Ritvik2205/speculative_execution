.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
movzx ecx, bl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 32
or sil, 122
adc rbx, rax
add sil, -53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, -55 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovp ax, cx
neg edx
setb al
cmp bl, -114
add dl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
