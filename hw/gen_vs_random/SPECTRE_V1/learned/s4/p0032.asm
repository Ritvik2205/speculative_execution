.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
setz cl
add dil, -75
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sub sil, al
test cl, -24
mov cl, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
sub rbx, -11
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
