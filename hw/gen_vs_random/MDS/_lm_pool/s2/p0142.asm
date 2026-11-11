.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
test dil, sil
or rax, -1523798580
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test dil, 46
and dil, -39
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and al, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
xor al, dl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
test edx, -1561252782
xor ax, -1005
test ebx, -2015966884
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
