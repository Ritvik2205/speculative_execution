.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
mul rcx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 66
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
add sil, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], si
or di, 0b1000000000000000 # instrumentation
bsf dx, di
or di, di
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add dl, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
