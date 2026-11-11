.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and dl, cl
test eax, 1838539683
or sil, cl
test edi, -1252846009
or al, 16
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
and ecx, -104
xor cl, 15
and al, 84
or rsi, 49
xor dl, 8
test dil, 46
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
test eax, -409834435
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
