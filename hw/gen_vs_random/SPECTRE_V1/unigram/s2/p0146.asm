.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], 58
add edx, 31
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rax + rbx + 80]
lea rax, qword ptr [rcx + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
btc rdi, rbx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
sbb bl, 79
add bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
