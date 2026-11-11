.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test dl, cl
test al, -81
xor dl, -59
xor dil, -3
or cl, -36
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
test rdi, 28
xor al, -26
and ax, -122
xor dil, -70
and dl, dl
and di, 91
or al, dl
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
xor sil, 110
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
