.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 31571
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
setp sil
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
adc rax, -1877286258
lea edx, qword ptr [rcx + rdi + 62270]
setnle sil
xor al, bl
cmovb di, bx
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
adc dl, cl
not rcx
imul rdi, rsi, -42
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
