.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
sub al, sil
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 79
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
adc al, dl
lea rbx, qword ptr [rdx + rax + 40]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
imul eax, esi, 83
jl .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, di
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
neg al
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
