.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 44
lea rbx, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
add eax, 1938514106
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
not eax
sbb ecx, 91
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
