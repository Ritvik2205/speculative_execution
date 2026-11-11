.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
mul rdx
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
add sil, 6 # instrumentation
cmovl ebx, esi
imul rcx
lea esi, qword ptr [rcx + rcx + 2]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
mov dl, dl
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 8
cbw
sbb eax, -403815802
and rax, 1163013815
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
