.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 9
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and al, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or bl, al
not al
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
btr rbx, 193
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
