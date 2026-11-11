.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
not cl
add bl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
add dil, -3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
mov di, cx
and rcx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 76
sub bl, 23
add al, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 61
mov si, dx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
