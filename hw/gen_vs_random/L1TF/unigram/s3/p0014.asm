.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
xor dl, -91
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
add ebx, 31
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
lea rax, qword ptr [rdx + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
lea rsi, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 65
lea rdi, qword ptr [rbx + rax]
xor edi, 48
lea ecx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
setp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
