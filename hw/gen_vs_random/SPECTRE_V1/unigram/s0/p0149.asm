.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
cmovp ecx, edi
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 84
add al, 110
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
cwde
test cl, -49
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 96
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
imul rcx, rdi
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
