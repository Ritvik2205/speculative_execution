.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 10
sets dl
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
or dil, -55
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 90
adc dl, dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sub bl, 11
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
xchg esi, eax
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
sbb sil, bl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
