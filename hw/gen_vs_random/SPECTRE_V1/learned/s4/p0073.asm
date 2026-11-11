.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dl, -23
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
cmovb eax, eax
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rcx, 55
cbw
setnl dl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub ebx, 82
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
add eax, edx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 7
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
test eax, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
