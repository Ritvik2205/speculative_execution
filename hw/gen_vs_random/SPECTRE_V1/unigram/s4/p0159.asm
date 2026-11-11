.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
adc dl, dl
adc sil, -77
cbw
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe si, dx
lea dx, qword ptr [rax + rdx + 18]
imul rbx, rcx
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
sbb ebx, 46
sub bl, bl
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
