.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dil
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add al, -92 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
or rdx, 23
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
xor esi, 79
or al, sil
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
