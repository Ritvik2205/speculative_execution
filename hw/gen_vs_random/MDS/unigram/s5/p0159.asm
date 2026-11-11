.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and sil, 101 # instrumentation
cmovno eax, esi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rdi, 79
cmovp dx, ax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
or edx, -1
or dx, dx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovnz esi, edi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 13
or cl, dil
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
