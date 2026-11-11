.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
xor rdi, 26
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
setno cl
mul sil
and esi, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
