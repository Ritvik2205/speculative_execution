.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 75
lea edx, qword ptr [rdx + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
xor rbx, -34
lea rcx, qword ptr [rdx + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
lea cx, qword ptr [rax + rdx + 46]
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
adc bl, 102
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 48
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 68
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
