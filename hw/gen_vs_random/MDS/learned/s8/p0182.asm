.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and eax, 461212071
and bl, bl
test dil, dl
cmovnp rax, rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and eax, 561041355
test cl, sil
and di, 99
not dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
