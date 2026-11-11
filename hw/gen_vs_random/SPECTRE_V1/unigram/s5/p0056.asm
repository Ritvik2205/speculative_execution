.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rcx
and dil, 98
cmp dl, cl
adc esi, esi
and rdi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], eax
xor bl, -38
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
inc rcx
add dl, -73 # instrumentation
btr si, di
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
