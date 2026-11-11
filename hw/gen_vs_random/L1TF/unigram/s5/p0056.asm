.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, ecx
bts esi, ebx
lea di, qword ptr [rdi + rbx]
lea eax, qword ptr [rdi + rdx + 85]
cmovp ecx, edi
btr edi, ebx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or dil, -113
xor rcx, 12
cmovl rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
add dl, 125 # instrumentation
cmovbe rcx, rcx
cmovl rsi, rsi
xchg rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
