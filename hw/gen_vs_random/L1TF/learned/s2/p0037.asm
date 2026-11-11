.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 49
xor ax, 34
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
xor al, sil
or al, -57
and dl, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and cl, 52
sub cl, -49
jmp .bb_0.1
.bb_0.1:
test dl, -37
or eax, -401020526
sub dl, -34
or rcx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
