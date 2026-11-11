.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, edx
xor sil, 64
setnp al
adc eax, 457059541
xor cl, 89
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
inc eax
jmp .bb_0.1
.bb_0.1:
add bl, -92 # instrumentation
setnz al
cmovl rdi, rsi
cmovnp si, cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
