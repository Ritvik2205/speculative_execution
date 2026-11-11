.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add cl, 97 # instrumentation
adc ax, dx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
setnz dil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
cmovns rbx, rbx
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 40 # instrumentation
lea cx, qword ptr [rsi + rsi]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
