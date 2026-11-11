.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 51
add bl, dl
or esi, -74
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
or al, 100
sub dl, cl
sbb bl, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp si, -11
xor dil, -37
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
