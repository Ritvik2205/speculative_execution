.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
cmp rax, 16650668
and dil, sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
test al, -70
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, dl
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or cl, dl
cmovb ax, dx
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 27
test dl, -37
or al, bl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
