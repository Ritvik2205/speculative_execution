.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
lea dx, qword ptr [rdi + rdi + 78]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
add al, 28 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
test cl, dil
add cl, -127
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 65
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
sub al, bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
lea dx, qword ptr [rcx + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
