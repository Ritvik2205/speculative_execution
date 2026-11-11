.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rbx + rdx]
mov dil, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
add rsi, rcx
add bl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
jmp .bb_0.1
.bb_0.1:
test cx, 32579
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 65
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
btc rdx, rsi
add dl, 109 # instrumentation
sbb dl, 62
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
cmovb edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
