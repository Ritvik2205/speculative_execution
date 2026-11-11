.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 99
lea rcx, qword ptr [rcx + rbx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
bt eax, 78
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
add bx, cx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
sbb ebx, edi
xchg rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
cmovnp rdi, rsi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
movsx cx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
