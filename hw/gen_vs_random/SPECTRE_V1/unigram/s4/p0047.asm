.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, 26
or cl, 97
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
xchg rax, rax
mov esi, eax
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
movzx bx, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe eax, ecx
bswap rdi
sbb al, -127
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 83
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
or dl, 1 # instrumentation
add sil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
bts rcx, 95
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
