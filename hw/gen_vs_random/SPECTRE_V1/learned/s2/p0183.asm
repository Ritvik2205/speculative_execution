.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 16
cmp al, cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
add al, -72
jmp .bb_0.1
.bb_0.1:
test bl, -8
cmp sil, 25
jl .bb_0.2
jmp .exit_0
.bb_0.2:
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc dil, 71
cmovs dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
