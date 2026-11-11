.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
lea rbx, qword ptr [rbx]
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
