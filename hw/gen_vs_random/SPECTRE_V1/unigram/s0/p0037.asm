.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 50
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
btr ax, 95
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
xchg dx, di
sub cx, di
cmp al, al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and bl, cl
mov sil, sil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
add bl, 56 # instrumentation
cmovns esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
