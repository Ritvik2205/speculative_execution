.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], bx
and rbx, -88
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
cmovo rcx, rsi
lea ebx, qword ptr [rbx + rsi]
lea cx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
btr bx, si
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
