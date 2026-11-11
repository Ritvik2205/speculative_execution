.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 80
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
sbb cl, dil
test ax, 19339
movsx ax, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
test bl, -8
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 77
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test al, -75
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
