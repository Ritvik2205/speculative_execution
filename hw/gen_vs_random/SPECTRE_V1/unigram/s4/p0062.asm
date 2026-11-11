.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, ax
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
cmp eax, ecx
sbb bl, 98
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
or rax, -357903210
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
movsx rdi, dx
movsx ax, al
mov sil, cl
lea rax, qword ptr [rdx]
movzx ax, bl
cmovl rsi, rcx
and dil, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
