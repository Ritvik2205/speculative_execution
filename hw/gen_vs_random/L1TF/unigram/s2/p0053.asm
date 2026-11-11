.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub rdi, rax
test ebx, 69
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
add dl, 40 # instrumentation
cmovp rcx, rdx
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
lea rbx, qword ptr [rax + rsi]
xor dil, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
sbb bl, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
