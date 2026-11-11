.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, ebx
sbb al, al
sets dl
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
lea esi, qword ptr [rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bts bx, si
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
movzx esi, bx
lea rax, qword ptr [rdx + rdx + 20]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
lea rax, qword ptr [rsi + rsi]
add bl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and dil, -93
lea esi, qword ptr [rdi + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
