.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 67
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1716718453
or dl, 41
lea rax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 34
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 39
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
imul al
cmovno rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
