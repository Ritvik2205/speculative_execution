.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
lea bx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
btr rbx, rdi
lea rdx, qword ptr [rbx + rdx + 6174]
cmp al, 53
adc rax, rbx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnbe ebx, esi
setbe bl
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
add al, al
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
