.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
sbb rdx, 98
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
add al, 108 # instrumentation
setl al
lea eax, qword ptr [rdx + rdi]
lea ax, qword ptr [rsi + rax + 56494]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
add cl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 24
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdx + rsi + 88]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
btr esi, 37
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
