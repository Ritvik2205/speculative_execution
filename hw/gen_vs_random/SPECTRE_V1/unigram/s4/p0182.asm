.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, cx
inc dl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
xor dl, cl
imul eax
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
cmp bx, 43
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo ax, di
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
mov rbx, rsi
lea rdx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
cmovb rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
