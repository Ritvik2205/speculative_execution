.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, bl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
neg cl
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
add dil, dl
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 75
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rsi], di
add al, 19 # instrumentation
setnz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
