.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi + rdi]
add cl, 112 # instrumentation
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
sub ax, -17837
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
imul rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and dil, dil
cmovs cx, dx
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
lea bx, qword ptr [rdx + rdi + 22131]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
