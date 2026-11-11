.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
xor esi, 43
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
xchg sil, cl
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
xor al, sil
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea ax, qword ptr [rdx + rdx + 78]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
lea dx, qword ptr [rdi]
lea cx, qword ptr [rbx + rax + 66]
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
