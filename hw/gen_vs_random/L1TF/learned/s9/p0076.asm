.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
or ebx, ecx
cmovle rax, rbx
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
add dl, sil
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
bts eax, 232
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
or rsi, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
