.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], 90
and ecx, ecx
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmp esi, 9
add ax, 8031
lea di, qword ptr [rdi + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
adc di, ax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
cmovle si, di
sub bl, dil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
