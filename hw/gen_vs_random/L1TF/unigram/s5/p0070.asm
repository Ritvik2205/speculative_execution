.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -75
setnl bl
movsx rdx, di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 13
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
add dl, 55 # instrumentation
lea edx, qword ptr [rdi + rax + 55]
xor dx, 18
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
add al, -34 # instrumentation
setnp dil
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
