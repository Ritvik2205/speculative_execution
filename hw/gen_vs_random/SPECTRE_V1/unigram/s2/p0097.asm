.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 96
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
adc al, dl
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
setbe bl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe rax, rcx
movzx si, cl
add cl, 63 # instrumentation
cmovl cx, si
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 100
adc cl, bl
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 79
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 33
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
