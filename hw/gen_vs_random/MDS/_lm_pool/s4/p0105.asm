.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor cl, al
and rax, -636362975
or dil, -71
jmp .bb_0.1
.bb_0.1:
test al, 66
and eax, 561041355
test al, sil
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
test ecx, -1843375753
or cl, sil
test eax, 1729060510
bts dx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
