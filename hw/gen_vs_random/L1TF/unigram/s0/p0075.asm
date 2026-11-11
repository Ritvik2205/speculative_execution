.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
or dx, -126
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
not di
cmovz esi, edx
movzx ebx, cl
sbb ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
bt eax, 59
add dl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 48
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
bt rbx, rdi
add bl, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
