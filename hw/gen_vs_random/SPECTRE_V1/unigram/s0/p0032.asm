.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rsi, qword ptr [rbx + rdi + 5]
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 10
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
setnz dl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
add al, -76 # instrumentation
cmovnbe cx, cx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
xor esi, ecx
add cl, -26 # instrumentation
cmovle rbx, rcx
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
