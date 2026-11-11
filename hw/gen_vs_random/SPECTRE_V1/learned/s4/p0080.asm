.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rsi
and al, 33
sub sil, -18
xchg eax, ecx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, al
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add al, -109
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
