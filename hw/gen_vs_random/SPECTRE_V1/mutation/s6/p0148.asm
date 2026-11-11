.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
sub cl, cl
add rdx, 95
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
sub al, -66
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
setnle al
cmovl ax, bx
sub edx, -63
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
