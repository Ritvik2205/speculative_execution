.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -5
setnb sil
add dl, -40 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
cmovp ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
movzx ecx, di
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add bl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
xor sil, dil
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
