.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
inc al
sub cl, dl
xor bl, al
and cl, al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
lea edx, qword ptr [rsi]
cmp di, -78
inc bl
xor sil, dl
bts ebx, 24
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
