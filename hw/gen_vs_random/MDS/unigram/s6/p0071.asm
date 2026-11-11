.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
cmovz di, bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test rbx, rdx
test si, 17
or sil, dl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and ecx, -104
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and dl, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
btc rbx, rcx
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
test cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
