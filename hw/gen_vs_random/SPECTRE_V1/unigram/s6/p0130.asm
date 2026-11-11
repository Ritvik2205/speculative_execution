.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
add sil, 9 # instrumentation
adc sil, al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
xor dl, dl
cmp cl, 31
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 60
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
xor al, -89
bswap eax
sbb cl, al
xchg dl, al
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
