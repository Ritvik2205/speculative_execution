.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 17
xor al, bl
adc dil, cl
xor al, 45
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 71
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and al, -68
sub rsi, 35
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
cmovb di, si
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
