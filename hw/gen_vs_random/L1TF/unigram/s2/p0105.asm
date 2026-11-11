.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
lea rcx, qword ptr [rcx + rsi + 87]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
add cl, 123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
imul dx, si
btc rax, 14
bt cx, 45
add bl, 111 # instrumentation
cmovs rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
sbb ax, -5921
movsx cx, sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
add bl, -79 # instrumentation
cmovo cx, dx
bt rax, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
