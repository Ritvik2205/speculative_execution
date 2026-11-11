.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
xor al, -26
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and dl, bl
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test al, -81
test dl, bl
or cl, 30
xor dil, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
