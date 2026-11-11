.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
adc cl, cl
bts si, cx
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmp dil, -78
add cl, 72 # instrumentation
adc al, 117
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
movsx ax, dl
setbe al
or di, 0b1000000000000000 # instrumentation
bsf ax, di
bswap rbx
sub sil, sil
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
setns dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
