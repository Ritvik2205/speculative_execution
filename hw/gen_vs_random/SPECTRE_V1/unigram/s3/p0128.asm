.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 88
bswap rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc bx, -112
xor bl, -38
lea rsi, qword ptr [rax + rax + 48]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
lea rcx, qword ptr [rax]
mul rcx
add bl, -51 # instrumentation
cmovno rbx, rcx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
sub sil, al
xor al, -42
add si, 19
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
