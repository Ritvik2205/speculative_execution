.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
sbb dil, dl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
cmovb ecx, ebx
xor sil, dil
lea rdx, qword ptr [rax + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 94
add al, 40 # instrumentation
cmovp rsi, rax
lea dx, qword ptr [rax + rcx + 33]
cmovs esi, esi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 51
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
