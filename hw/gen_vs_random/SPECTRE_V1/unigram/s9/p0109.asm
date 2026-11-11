.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, -1638758413
cmovo rsi, rdi
add al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 21
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
test rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
sbb esi, ebx
mul sil
and rcx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rcx]
add si, 99
sub rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
