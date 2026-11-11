.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, 255
and dx, 86
xor dl, al
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and si, 19
and rdx, 36
or dil, -52
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
jmp .bb_0.1
.bb_0.1:
bts eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
cmovnb rdi, rdi
or ecx, ebx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovbe ax, ax
or dil, dil
or bl, dil
or cl, al
and sil, 122 # instrumentation
cmovnb rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
