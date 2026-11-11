.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rbx + rbx + 93]
add cl, 107 # instrumentation
lea edi, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 54
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
add cl, 88 # instrumentation
sbb cl, 2
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
sbb al, 66
or rbx, rdi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
btc rbx, rcx
bt rdi, 30
test ax, dx
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 11
lea si, qword ptr [rsi]
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
