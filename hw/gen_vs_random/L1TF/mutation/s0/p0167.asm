.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovb esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
cmp rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
setnle bl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
add bl, -9 # instrumentation
cmovs dx, di
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
cmovp eax, esi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
add al, 66 # instrumentation
cmovnp edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
