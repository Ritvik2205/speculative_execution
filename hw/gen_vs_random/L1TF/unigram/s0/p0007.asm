.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
add dil, 88
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
cmovnbe eax, esi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
add bl, 89 # instrumentation
sbb dl, al
cmovnbe rbx, rsi
sub sil, al
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
mov edx, eax
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
