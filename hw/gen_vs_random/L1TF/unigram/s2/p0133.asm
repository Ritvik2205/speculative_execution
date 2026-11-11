.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
test bl, -92
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
xor sil, sil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovnl rsi, rax
lea ax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 90
bts di, 43
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 47
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
