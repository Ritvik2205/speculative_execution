.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
btr rdi, 129
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or al, -24
xor sil, -15
and di, 99
or ax, -7150
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test bl, -114
or cl, 30
or al, -58
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
xor dl, 8
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
test dl, al
bt di, cx
test esi, 1857129931
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
