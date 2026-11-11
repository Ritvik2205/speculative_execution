.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
mul ebx
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rdi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
xor di, 71
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
dec cl
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
