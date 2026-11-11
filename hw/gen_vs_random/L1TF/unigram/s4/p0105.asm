.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
cmp ebx, 30
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
add al, 42 # instrumentation
lea esi, qword ptr [rax + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
inc al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
inc sil
xchg dx, bx
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
