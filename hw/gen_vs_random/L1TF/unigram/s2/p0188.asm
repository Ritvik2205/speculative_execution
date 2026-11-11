.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg di, si
sub bl, al
xor rbx, rbx
neg ebx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
cmp bl, 67
xor dl, sil
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
cmp dx, 60
adc ecx, 73
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
btr edx, 55
mov cx, di
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
