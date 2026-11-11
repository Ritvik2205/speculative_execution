.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
mul rcx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
xor bl, al
or ecx, 65
xor sil, cl
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdi]
bswap rax
add bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
