.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
cmp al, 23
btr rbx, rdi
adc rax, rbx
lea bx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
lea rdx, qword ptr [rbx + rdx + 6174]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
setbe bl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 54
add al, al
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
