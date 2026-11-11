.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
xor dl, 34
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
or si, -12
and sil, -9
or al, dil
and al, -8
or al, dil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
