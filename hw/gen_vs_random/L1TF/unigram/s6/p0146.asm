.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb eax, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
setz dil
lea rax, qword ptr [rdi + rax]
sbb sil, -79
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
btc edx, ecx
lea eax, qword ptr [rax + rbx + 9]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 45
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
dec esi
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
test rsi, rcx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
