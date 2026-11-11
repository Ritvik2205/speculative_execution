.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 100
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and al, dl
or dl, sil
test bl, dl
or cx, 49
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor al, dil
jmp .bb_0.1
.bb_0.1:
xor dil, -5
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 11
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and dl, sil
xor dl, sil
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
