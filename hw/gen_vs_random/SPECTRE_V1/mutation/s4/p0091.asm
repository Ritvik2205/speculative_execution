.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, al
test dl, -36
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
bt ecx, eax
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
cmp bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
