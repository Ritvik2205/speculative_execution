.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
xor bl, al
xor al, -4
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test dl, sil
xor rbx, 89
or al, -75
and al, dl
and dil, al
jmp .bb_0.2
.bb_0.2:
test bl, al
jmp .bb_0.3
.bb_0.3:
or sil, al
xor rcx, 71
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
