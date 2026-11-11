.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 57
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rax, -1931765367
xor sil, -15
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and al, 35
btr si, dx
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 15
and edx, -44
test al, dl
or rdx, -109
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
