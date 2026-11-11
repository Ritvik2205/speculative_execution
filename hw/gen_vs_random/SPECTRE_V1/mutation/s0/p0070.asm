.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, rbx
cmp al, 53
btr rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
lea rdx, qword ptr [rbx + rdx + 6174]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
lea bx, qword ptr [rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
add al, al
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnbe ebx, esi
setbe bl
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
