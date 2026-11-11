.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
mov al, dl
bswap edx
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdi
sub bl, dil
lea rdx, qword ptr [rax]
xor al, -74
add al, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setp bl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
