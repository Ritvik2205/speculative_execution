.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
adc rbx, 85
add dl, 92 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 45
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ecx
movsx bx, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
test edx, 1380346728
xor rdx, 98
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
