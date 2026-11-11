.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and dl, bl
bt ax, dx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
bt eax, edi
test bl, bl
and cl, cl
test al, sil
jmp .bb_0.1
.bb_0.1:
test edi, -1252846009
test al, dil
test al, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor ax, 31969
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
