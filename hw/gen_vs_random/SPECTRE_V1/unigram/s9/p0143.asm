.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, dx
xor bl, sil
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], bx
test dl, dil
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
inc ebx
sub rbx, rcx
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
lea eax, qword ptr [rax + rbx]
not rbx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 90
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
