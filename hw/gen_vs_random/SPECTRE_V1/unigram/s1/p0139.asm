.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dil
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
and eax, 933895314
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 60
cmp esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
add bl, -64 # instrumentation
cmovnle ebx, edi
and bx, -118
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
adc edx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
