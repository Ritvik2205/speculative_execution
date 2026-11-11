.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 77
setnz cl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
add bx, -65
sub cl, -47
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
cmovo cx, si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
adc ax, -614
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
setnp al
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
xor al, 78
sub dl, dl
movzx ebx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
