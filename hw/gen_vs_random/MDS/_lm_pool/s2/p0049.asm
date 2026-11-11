.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -119
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test dil, sil
btr bx, 100
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and esi, 85
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test al, 22
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
test al, cl
test cl, dl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test rdi, 34
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
