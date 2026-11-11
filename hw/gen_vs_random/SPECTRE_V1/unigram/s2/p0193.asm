.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, al
not rdi
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
mul dil
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], ax
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 68
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
add sil, dil
lea rbx, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
lea cx, qword ptr [rax + rdx + 69]
neg ebx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
