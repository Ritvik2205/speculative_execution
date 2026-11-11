.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 64
adc dil, 8
adc dil, dil
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
or sil, dil
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
lea rcx, qword ptr [rax + rcx + 59274]
sub ax, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 36
adc sil, cl
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
