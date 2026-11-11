.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
btc di, 237
add bl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
btr eax, edx
btc di, 237
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
cmp dil, 34
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
and dl, al
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 81
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
