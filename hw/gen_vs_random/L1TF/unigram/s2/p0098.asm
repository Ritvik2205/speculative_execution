.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
dec ebx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
lea ax, qword ptr [rsi + rax + 56494]
and al, dil
add cl, 39 # instrumentation
setle dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
add cl, -75 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test cl, dl
add sil, dl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
