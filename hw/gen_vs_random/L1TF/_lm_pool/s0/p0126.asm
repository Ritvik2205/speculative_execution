.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -67
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 51
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 88
jmp .bb_0.2
.bb_0.2:
and dx, ax
jmp .bb_0.3
.bb_0.3:
add dl, -56 # instrumentation
cmovs rbx, rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
test dl, -37
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
