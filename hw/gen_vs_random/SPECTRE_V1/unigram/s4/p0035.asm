.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
add al, 19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
sub al, -89
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, -33
neg cl
dec dil
xchg al, cl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
cmovs bx, ax
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
