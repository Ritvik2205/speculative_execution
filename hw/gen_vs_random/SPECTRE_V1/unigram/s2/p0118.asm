.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdx
neg rbx
test sil, 47
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
mov bl, cl
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
setbe sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
or al, 100
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 57
imul al
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 24
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 12
lea cx, qword ptr [rsi + rdx]
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
