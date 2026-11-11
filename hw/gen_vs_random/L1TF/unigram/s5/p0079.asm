.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 55
cwde
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 45
xor al, al
xor al, cl
setnbe al
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
sub al, dil
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
