.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
test dl, 27
xor al, cl
test edi, -1252846009
and edx, -44
or rsi, 96
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
or rax, -1523798580
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and ebx, 46
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
