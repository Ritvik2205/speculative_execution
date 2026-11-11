.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
add bl, -5 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
lea cx, qword ptr [rdx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
adc rax, 1310333622
add al, 19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
