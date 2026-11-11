.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, edi
and dx, 99
or bx, 72
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and cl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and sil, dil
cmovno ebx, esi
btr rcx, 63
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and cl, al
jmp .bb_0.1
.bb_0.1:
cmovnp ecx, edx
cmovnle ebx, edi
btr bx, 8
or di, -18
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
