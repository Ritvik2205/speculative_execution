.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rbx, rsi
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 93
sub bl, sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
add dx, bx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rbx]
add sil, -61
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
imul al
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
lea si, qword ptr [rdx + rbx + 78]
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
