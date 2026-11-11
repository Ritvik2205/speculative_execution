.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
sub eax, 83
add cl, 21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
lea edx, qword ptr [rbx + rcx]
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
lea di, qword ptr [rdx + rdi + 47]
test cl, al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
cmovp bx, ax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and bx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
