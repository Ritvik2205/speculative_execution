.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, dx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
xor dl, -68
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
bt ecx, 71
cmovnbe edi, edx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
cmovp esi, esi
and rbx, 78
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
xor di, si
or rbx, -124
or rcx, 86
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
