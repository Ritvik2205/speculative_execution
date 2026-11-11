.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 76
imul edx
sbb rdx, rbx
dec cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
cwde
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 96
xor di, 65
and al, al
lea rdx, qword ptr [rbx + rdi]
lea ecx, qword ptr [rsi + rsi + 5]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
