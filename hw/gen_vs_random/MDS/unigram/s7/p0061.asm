.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and dl, 72 # instrumentation
cmovz ecx, eax
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
and al, -103
cmovnb rsi, rsi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
cmovle eax, ebx
or rsi, 49
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
or dl, sil
or al, cl
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and cl, -103 # instrumentation
cmovbe cx, cx
cmovnp cx, bx
btr rdx, rcx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
