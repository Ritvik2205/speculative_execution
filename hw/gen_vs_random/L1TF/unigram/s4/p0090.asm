.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
nop
and ecx, eax
add bl, -93
sub edx, 49
setnbe bl
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
sub edi, 32
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or dl, dl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
cmovb bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
cwd
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
setnbe cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
