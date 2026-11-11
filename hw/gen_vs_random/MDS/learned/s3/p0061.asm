.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
bts rsi, 221
or al, 16
xor dil, dl
xor bl, sil
xor ax, -1005
or al, 24
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
or al, 25
test bl, sil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
not cl
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
