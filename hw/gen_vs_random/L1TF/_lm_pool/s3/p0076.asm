.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
lea rdx, qword ptr [rsi + rcx]
and sil, dl
cmovb ax, si
test ax, 13284
and rax, 1994547909
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
jmp .bb_0.2
.bb_0.2:
xor al, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
