.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp al
xor sil, 64
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
xor cl, 89
bts esi, edx
inc eax
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
adc eax, 457059541
jmp .bb_0.1
.bb_0.1:
cmovl rdi, rsi
add bl, -92 # instrumentation
setnz al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovnp si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
