.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 16
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
lea rbx, qword ptr [rdx + rdi + 60]
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 81
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
adc cx, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
