.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
lea si, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
lea si, qword ptr [rdx + rcx + 89]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 70
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
lea esi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 29
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
test cx, -17886
test bl, -8
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], eax
sbb ebx, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
