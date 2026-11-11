.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test ebx, 33
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdi], dx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 94
bt ecx, 198
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
or dil, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 60
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
xchg rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
