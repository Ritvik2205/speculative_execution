.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov bl, cl
sub dil, -32
sub bl, dl
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dl
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
add sil, 2
lea rcx, qword ptr [rax + rbx + 30]
not ebx
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
