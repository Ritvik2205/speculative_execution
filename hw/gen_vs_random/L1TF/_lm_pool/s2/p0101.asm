.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
or sil, cl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
lea edx, qword ptr [rcx]
lea di, qword ptr [rcx]
or sil, -44
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
cmovnp bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
