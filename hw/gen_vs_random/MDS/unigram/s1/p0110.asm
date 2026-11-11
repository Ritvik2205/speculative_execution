.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 40
or rdi, 21
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
bts dx, si
and rsi, 38
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
cmovnb rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 59
and ebx, 86
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
cmovz ax, dx
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and cl, 11 # instrumentation
cmovp edi, esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
