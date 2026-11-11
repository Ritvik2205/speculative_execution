.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rdi
lea edi, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 18
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
lea si, qword ptr [rdx + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
sub bx, si
adc rcx, rbx
xor dil, -42
lea edi, qword ptr [rax + rax + 35]
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
sub al, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
