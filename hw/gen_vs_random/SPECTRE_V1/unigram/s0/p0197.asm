.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
or sil, 34
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 13
and bx, -118
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
lea rdi, qword ptr [rsi + rdi + 63]
imul rbx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
setb al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
cmovs rbx, rbx
cmp bl, cl
neg rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
