.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 84 # instrumentation
btc cx, cx
cmovo rax, rdi
btr rdx, 161
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
sbb al, 61
btr ebx, edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax]
add bl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
add bl, 15 # instrumentation
cmovb ecx, ecx
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
add sil, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
adc ebx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
