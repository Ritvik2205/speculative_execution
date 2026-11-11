.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 80
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
xchg ax, dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
cmovnl rsi, rbx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
add cl, 107 # instrumentation
cmovnl bx, bx
sub dl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
