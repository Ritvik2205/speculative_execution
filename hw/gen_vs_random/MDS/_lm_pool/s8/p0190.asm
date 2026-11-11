.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
btr bx, dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or dil, bl
or bl, dil
xor sil, 27
xor cx, -18
xor al, bl
xor rax, -1657511731
test ebx, -961564216
or rcx, 54
test ecx, -1843375753
xor dil, 81
or al, 54
jmp .bb_0.1
.bb_0.1:
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
