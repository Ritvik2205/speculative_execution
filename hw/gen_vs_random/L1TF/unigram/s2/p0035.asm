.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -94 # instrumentation
setnb bl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 99
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
add bl, 68
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
cmp esi, ecx
cmovl rsi, rdx
or rax, rcx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
test rdx, 32
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 89
sbb cl, -11
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
