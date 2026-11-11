.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
cmovle di, ax
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
xchg rdi, rdx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
lea esi, qword ptr [rdx]
and sil, 111
sub rax, -1628299544
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
