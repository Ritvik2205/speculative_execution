.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
xor ax, -6793
test esi, 425331143
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
xor dil, 8
or al, -24
and cl, -111
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or sil, dl
test rax, 337705873
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
