.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rcx, rsi
or rsi, rax
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rcx, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
and sil, cl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
or si, si
test dil, 46
and al, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
cmovbe ebx, edx
test rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
