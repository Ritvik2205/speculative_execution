.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 37
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and dil, 125
test dil, 46
test bl, -14
and sil, dil
and dl, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
xor bl, -102
or rbx, -77
jmp .bb_0.1
.bb_0.1:
or al, -75
test al, dl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
