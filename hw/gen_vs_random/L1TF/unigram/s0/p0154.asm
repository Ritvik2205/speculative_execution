.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
add al, 39 # instrumentation
lea ax, qword ptr [rdx]
dec ebx
sbb si, 86
lea edx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
inc eax
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
sbb bl, -88
xor edi, ebx
cmovns ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
movsx esi, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
