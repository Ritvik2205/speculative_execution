.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
or al, 16
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
test dl, cl
or dl, -21
and bl, -34 # instrumentation
cmovs rdi, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 41
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
bt edi, 225
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
bt cx, di
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
xor cl, 55
test si, 86
btr rax, 209
bts bx, 3
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
btr dx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
