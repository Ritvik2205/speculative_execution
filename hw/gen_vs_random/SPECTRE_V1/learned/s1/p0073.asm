.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
bt edi, 64
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 93
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea rdi, qword ptr [rax]
jmp .bb_0.4
.bb_0.4:
and bl, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
cmovo esi, ebx
or rax, -357903210
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
