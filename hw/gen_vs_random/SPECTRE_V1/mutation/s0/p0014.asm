.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and ax, -13240
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
add bl, -95
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb dil, -93
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, bl
and ax, 23118
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
test bl, dl
lea ebx, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
lea ax, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
