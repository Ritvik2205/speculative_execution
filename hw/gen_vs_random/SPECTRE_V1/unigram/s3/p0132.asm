.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
add cl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 29
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
cmovnz cx, cx
sbb rax, 1161375577
inc rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
