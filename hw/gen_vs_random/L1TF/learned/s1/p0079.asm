.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
xor dil, bl
or al, -48
test rcx, rsi
add dil, dl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, 68
lea cx, qword ptr [rdi + rax + 40]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
add al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
