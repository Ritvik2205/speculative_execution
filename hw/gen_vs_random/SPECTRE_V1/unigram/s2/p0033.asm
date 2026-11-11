.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
lea rcx, qword ptr [rsi + rax + 42]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and cx, 79
bswap rcx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
or sil, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmp dx, 82
setb dil
cmovbe rcx, rbx
add al, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
