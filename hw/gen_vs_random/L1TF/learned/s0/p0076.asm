.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
mov dil, dil
mul dx
xor al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
or dil, -28
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdi
adc ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
