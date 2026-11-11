.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
sub eax, -518999763
adc rdx, 35
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
bt dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
cmovnl ebx, esi
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
add sil, 36
and dil, dl
test cl, cl
dec ebx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 14
xor dl, dl
cmovnle cx, cx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
