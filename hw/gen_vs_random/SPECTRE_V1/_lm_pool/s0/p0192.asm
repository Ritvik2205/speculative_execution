.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
sub sil, -18
sub rsi, 97
sbb eax, 99727957
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor cl, dl
cmp bl, sil
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
