.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and sil, -84
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmp eax, 64
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 46
sub bl, -89
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or bl, sil
test al, -24
test eax, 1340292467
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
