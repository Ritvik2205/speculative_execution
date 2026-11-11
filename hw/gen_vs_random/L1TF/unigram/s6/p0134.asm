.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
xchg rax, rcx
btc ebx, 11
lea bx, qword ptr [rax + rax + 89]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
or bl, al
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
add dl, -10 # instrumentation
cmovns edx, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
add sil, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
test cl, 28
bts eax, 232
add sil, 77 # instrumentation
sbb esi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
