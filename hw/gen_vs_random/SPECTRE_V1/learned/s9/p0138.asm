.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, dx
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
lea rdi, qword ptr [rcx + rsi + 94]
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc si, 6
test bl, -8
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
