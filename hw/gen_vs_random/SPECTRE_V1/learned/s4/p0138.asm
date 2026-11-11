.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
lea bx, qword ptr [rax]
xor rax, -1905683998
or sil, dl
sub bl, cl
and bl, dil
xor al, -74
test ax, 19339
and bl, -43
xchg al, sil
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
