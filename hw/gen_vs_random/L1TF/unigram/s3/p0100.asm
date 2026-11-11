.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 100
cmp rsi, 45
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
movsx rdx, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and bl, bl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 55
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ecx
sbb rdx, 98
sub bl, dl
add cl, 107 # instrumentation
cmovnl dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
