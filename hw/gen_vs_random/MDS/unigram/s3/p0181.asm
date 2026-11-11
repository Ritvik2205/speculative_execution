.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
cmovp rax, rdi
and bx, cx
bt edi, 254
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
cmovle ebx, eax
or sil, sil
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
xor esi, 78
or bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
not ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
cmovle ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
