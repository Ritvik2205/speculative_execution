.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 61
cmovb bx, dx
xor dx, ax
jmp .bb_0.1
.bb_0.1:
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
cwde
bt cx, si
inc edx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 66
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
