.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
sub al, -97
and rsi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
sub ebx, ecx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
and sil, 93
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
cmovnz rsi, rdi
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
imul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
