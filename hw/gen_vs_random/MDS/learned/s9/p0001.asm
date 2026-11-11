.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
not sil
xor dl, al
test dl, sil
xor rdx, -59
xor dl, sil
or bl, bl
and rax, -1701787862
and sil, -56
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
or rdi, 21
xor al, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test rax, 1978892575
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
