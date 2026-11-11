.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, -34
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
setno al
or al, 19
cmovle rax, rdi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], esi
test sil, 97
bts bx, 7
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
neg bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdi]
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc cx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
