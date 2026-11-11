.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
and al, dl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rdi + rdx + 30816]
not cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
sets dl
setl cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
