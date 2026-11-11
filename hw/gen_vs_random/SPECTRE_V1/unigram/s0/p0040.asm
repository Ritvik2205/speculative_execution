.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
xchg ebx, eax
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
neg rbx
cmovb cx, ax
cmp cl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 29
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
xchg cl, dil
and rsi, 32
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
setbe dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
