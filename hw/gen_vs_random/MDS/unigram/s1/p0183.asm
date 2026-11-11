.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
or dil, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test cl, cl
xor dl, -19
cmovnb eax, esi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and dl, 46 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and bl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
bts rsi, 205
bt cx, ax
not rcx
and cl, 11 # instrumentation
cmovp esi, edi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 10
cmovle rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
