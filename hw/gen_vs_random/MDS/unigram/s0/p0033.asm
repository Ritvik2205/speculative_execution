.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and bl, 120 # instrumentation
cmovnp dx, cx
or cl, -77
bt si, bx
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
btr di, bx
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
cmovnz rdx, rbx
and rax, rax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 13
bts edi, 248
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and cl, 49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and sil, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
