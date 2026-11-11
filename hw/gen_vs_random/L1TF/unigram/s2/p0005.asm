.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
btc ax, 49
add al, 64 # instrumentation
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test bl, 45
neg dil
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
xor dil, al
sub rsi, 79
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
xchg rdx, rdx
add cl, 88
add al, 112 # instrumentation
cmovnle eax, edi
sub rdi, rdx
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
