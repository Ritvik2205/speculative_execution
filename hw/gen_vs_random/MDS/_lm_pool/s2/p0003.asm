.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and al, 35
jmp .bb_0.1
.bb_0.1:
test dil, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
test dil, sil
test dl, -85
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
xor sil, 110
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, 25
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
