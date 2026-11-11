.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
bswap eax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
lea eax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor bl, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
