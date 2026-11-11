.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, sil
setnz cl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
lea ecx, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 39
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
sbb si, 74
or rax, rcx
sbb al, -4
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
lea ebx, qword ptr [rsi + rbx + 65254]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
