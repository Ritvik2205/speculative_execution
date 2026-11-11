.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rdx
add al, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
cmovb di, ax
test ebx, ecx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
lea edx, qword ptr [rbx + rax]
jmp .bb_0.1
.bb_0.1:
sub ax, cx
add al, 117
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
bt rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
