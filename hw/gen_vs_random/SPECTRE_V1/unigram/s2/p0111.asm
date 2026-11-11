.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
adc rdi, -75
add bl, 106 # instrumentation
cmovs edx, ebx
sbb dil, 93
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
add dl, 63 # instrumentation
cmovle cx, si
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
adc sil, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, al
add dl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
adc al, dl
sub sil, -55
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
