.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp bx, cx
cmovnp cx, di
add al, -9 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 88
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
lea rsi, qword ptr [rdx + rcx + 71]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
lea rax, qword ptr [rsi + rbx]
mov di, 36
setp cl
and rdx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
sbb al, 61
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
sbb si, 77
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
