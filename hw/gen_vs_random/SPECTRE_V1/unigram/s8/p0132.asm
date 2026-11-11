.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
add bl, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
btc ebx, 218
cmp al, bl
xor esi, edx
bts si, 82
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor al, al
xchg rax, rdx
adc dx, si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
