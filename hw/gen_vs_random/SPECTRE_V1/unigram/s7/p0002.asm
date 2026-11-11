.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rbx]
cmovb di, bx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdx]
add rdx, 95
lea ecx, qword ptr [rdx + rdx]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
cmp bl, dil
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
jo .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ecx, 59
cmovbe eax, esi
test ebx, -1465665890
sub rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
cmp dl, dil
xchg rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
