.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and dil, -39
xor sil, -46
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or al, dl
or eax, ecx
and al, 87
xor rsi, -117
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
test rax, -648054011
xor rax, -404206377
test eax, 1838539683
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
