.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
test dl, al
xor al, 122
bts rax, 77
test ebx, -2015966884
xor sil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
test rcx, -613256812
test bl, -14
and cx, -2
not bl
or rsi, 55
test eax, 343548072
and sil, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
