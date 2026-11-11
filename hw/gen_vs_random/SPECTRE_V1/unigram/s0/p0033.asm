.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
cmp sil, dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
sbb bl, cl
xor al, cl
sbb al, dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
setle bl
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx]
cmovns rdx, rdi
cmovnle rdx, rdi
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
imul cx, dx, -88
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
