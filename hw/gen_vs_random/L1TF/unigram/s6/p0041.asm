.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 72
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
cmp di, -78
cmp bl, 123
setno sil
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
bts rsi, rsi
test si, ax
sbb rcx, 31
and dil, dil
setnle cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
