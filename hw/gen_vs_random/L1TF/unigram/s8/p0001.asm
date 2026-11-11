.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
lea rdx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
bts eax, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sub al, -3
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
