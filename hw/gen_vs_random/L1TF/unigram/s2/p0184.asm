.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 99
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
imul rdx, rsi, 87
adc cl, -34
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 65
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
setnp al
cmovo ax, di
jmp .bb_0.1
.bb_0.1:
or edi, eax
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
sub sil, -99
and edi, 91
xor dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
