.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
test cx, -17886
cmp dl, dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
sbb bl, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 73
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
test rdx, 1657596343
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
bswap rsi
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
