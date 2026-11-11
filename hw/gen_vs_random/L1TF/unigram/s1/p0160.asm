.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb dl
cmovb esi, edi
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovz esi, eax
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xchg ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
and bl, 125
cmp cl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
add cl, 19
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
add dx, ax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
