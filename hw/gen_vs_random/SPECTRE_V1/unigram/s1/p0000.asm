.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 100
lea bx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
or al, 19
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xchg dl, sil
adc ax, bx
setbe cl
lea edx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
sub eax, edi
add bl, 97 # instrumentation
cmovnb dx, ax
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
