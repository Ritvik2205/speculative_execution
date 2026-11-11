.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
adc rsi, 20
xchg si, cx
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
cmovnbe ax, dx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xor sil, sil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and cl, dl
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
cmovnz edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
