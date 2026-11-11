.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
bts ax, 18
add sil, dil
bts si, si
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
add bl, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
add cl, 88 # instrumentation
sbb cl, 96
neg rbx
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
