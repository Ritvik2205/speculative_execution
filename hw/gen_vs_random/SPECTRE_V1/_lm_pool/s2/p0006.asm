.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
test bl, -8
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bt edx, 82
sbb cl, bl
and dl, bl
sub cl, -21
sub bl, -6
add cl, dl
and dl, -92
test di, 8
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
