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
and al, -99
jmp .bb_0.1
.bb_0.1:
xor al, 14
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
lea rbx, qword ptr [rdx + rax + 60]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
jmp .bb_0.2
.bb_0.2:
sbb edi, edi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
add cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
