.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
not dl
or bl, cl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or al, -24
or rdx, -109
or al, -22
or al, -24
xor dl, bl
test dl, -119
or cl, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and al, 87
xor al, 34
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
