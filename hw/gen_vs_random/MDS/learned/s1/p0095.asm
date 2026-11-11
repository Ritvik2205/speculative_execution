.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or sil, dl
btr di, ax
not sil
or cl, 7
test ebx, -961564216
xor al, cl
test eax, 1287331633
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
or al, 24
or cl, -77
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
