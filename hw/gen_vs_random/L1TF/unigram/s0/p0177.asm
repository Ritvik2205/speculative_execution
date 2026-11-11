.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi + rdi]
or rdx, -98
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 40
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
add si, cx
sub bl, 58
bt edi, 191
jmp .bb_0.1
.bb_0.1:
add al, -21 # instrumentation
mov esi, edx
btc rax, rcx
setnl dil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
lea rsi, qword ptr [rdx + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
add dl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
sbb rax, 717206440
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
