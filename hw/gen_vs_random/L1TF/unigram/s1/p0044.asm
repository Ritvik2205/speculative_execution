.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdx + rdx + 79]
cmovp rdi, rbx
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
xor bl, bl
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sbb rdi, rax
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
setnz dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
