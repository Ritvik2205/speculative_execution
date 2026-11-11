.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
add cl, al
imul al
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
test sil, -31
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bt eax, esi
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
cmp bl, sil
or cx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
