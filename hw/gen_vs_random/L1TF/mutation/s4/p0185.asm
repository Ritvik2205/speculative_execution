.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, 457059541
xor sil, 64
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
inc eax
bts esi, edx
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
setnp al
xor cl, 89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovnp si, cx
cmovl rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
add bl, -92 # instrumentation
setnz al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
