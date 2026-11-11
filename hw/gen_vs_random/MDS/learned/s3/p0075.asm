.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 86
xor rsi, -117
test al, 66
and dil, 125
xor cl, 24
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
bts rsi, rdi
or rdx, -109
and di, 91
or rsi, 6
test al, sil
not bl
bts cx, 177
and cl, -6
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
