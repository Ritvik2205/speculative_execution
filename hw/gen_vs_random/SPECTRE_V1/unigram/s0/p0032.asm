.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
add cl, 44 # instrumentation
cmovz edx, ecx
sub cx, 75
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
add dl, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
bt rcx, rcx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
add esi, 9
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rsi + rdi + 89]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
cmp cl, 65
sub rbx, -11
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
