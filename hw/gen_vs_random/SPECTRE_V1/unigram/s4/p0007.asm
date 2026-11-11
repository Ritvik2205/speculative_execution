.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
test cl, -120
cmovno dx, di
adc cl, -81
cmp dil, -58
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
lea ecx, qword ptr [rdi + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
