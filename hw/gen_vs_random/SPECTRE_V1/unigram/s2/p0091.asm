.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
lea rax, qword ptr [rdi]
or bl, 14
lea dx, qword ptr [rdi + rcx + 15]
add al, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
cmp bl, -114
add dl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
xchg ecx, edx
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
xor bl, -38
cmovbe ebx, edi
cmovnz rdx, rsi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
