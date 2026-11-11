.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 26
test sil, 97
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
setb al
lea di, qword ptr [rcx + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
add ecx, 36
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
lea ax, qword ptr [rcx + rdx + 7]
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
