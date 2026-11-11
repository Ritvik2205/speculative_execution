.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
movzx bx, al
lea rdx, qword ptr [rax + rax + 95]
add al, -13
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 28
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
add cl, -123 # instrumentation
cmovnp rbx, rsi
jle .bb_0.1
jmp .exit_0
.bb_0.1:
neg bl
or dil, cl
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
xor cx, 78
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
sub eax, -882981501
sub dil, al
cmovle eax, ecx
inc dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
