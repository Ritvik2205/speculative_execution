.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and al, -111
jmp .bb_0.1
.bb_0.1:
xor al, 14
lea rax, qword ptr [rsi + rdx + 58]
jmp .bb_0.2
.bb_0.2:
add dx, si
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
adc al, cl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
