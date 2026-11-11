.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, 31
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
lea ecx, qword ptr [rcx + rax]
add dil, 72
sbb ax, -17107
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
inc rdx
mul rbx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, rax
mul al
sbb dil, sil
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
cmovs bx, dx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 79
or eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
