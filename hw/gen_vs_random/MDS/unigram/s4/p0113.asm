.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
bt edx, eax
and esi, 22
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and dx, 60
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
cmovbe edx, eax
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
