.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, cx
btc edi, 25
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and al, -54
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
adc sil, -77
inc ecx
lea rbx, qword ptr [rcx + rax + 80]
add dl, al
lea eax, qword ptr [rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
