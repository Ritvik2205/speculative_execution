.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe esi, edx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
lea cx, qword ptr [rdx + rcx + 91]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
adc ax, -614
xor al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 79
sbb dl, dil
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
cmp rax, 1189904463
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
