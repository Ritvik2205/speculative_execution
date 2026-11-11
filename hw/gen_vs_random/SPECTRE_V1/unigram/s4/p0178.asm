.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dl
xchg ecx, eax
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
test dl, -105
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
add esi, 94
and rbx, rsi
mov rdi, 66
test al, -75
lea rdx, qword ptr [rdx + rbx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
