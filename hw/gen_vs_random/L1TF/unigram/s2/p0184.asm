.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
imul rdi, rsi
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
cmovnz rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
mov di, bx
inc rdx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 8
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
xor bl, 38
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
add edi, ebx
xchg rdi, rax
sub bl, -96
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
