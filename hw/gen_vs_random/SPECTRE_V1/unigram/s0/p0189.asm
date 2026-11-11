.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
lea esi, qword ptr [rsi + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
btc rax, rbx
sub dil, -32
lea di, qword ptr [rdx + rsi]
bts rdx, 212
add al, 110 # instrumentation
movzx ax, dl
and ecx, -38
xchg cl, sil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 33
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
