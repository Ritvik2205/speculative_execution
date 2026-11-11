.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 71
cmovns eax, eax
add rbx, rsi
sub bx, 91
cmp rsi, rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
add dl, -48 # instrumentation
lea edx, qword ptr [rdx + rax]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 86
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
lea dx, qword ptr [rcx]
inc eax
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
