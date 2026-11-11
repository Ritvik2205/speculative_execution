.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
xor rax, 1636804787
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
add dil, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
add dl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
lea edx, qword ptr [rsi + rax + 29]
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 44
cmovnp ax, si
or cl, sil
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
