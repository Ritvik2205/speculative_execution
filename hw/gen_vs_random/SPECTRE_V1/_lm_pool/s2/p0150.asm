.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub dx, -23
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and al, al
xor sil, al
add sil, 2
sub ax, -17837
lea ecx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
