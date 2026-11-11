.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 51
inc rax
lea rdx, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
cmp dil, 51
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
sbb rbx, -117
cmovnle di, di
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
xor si, -50
not rbx
add bl, cl
sbb bx, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
