.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -29 # instrumentation
add al, -70 # instrumentation
setnp al
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 14
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
not rax
adc rax, 1310333622
or dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
xor dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
