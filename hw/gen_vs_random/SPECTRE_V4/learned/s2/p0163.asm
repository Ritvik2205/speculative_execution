.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
btc si, cx
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
test dil, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
bts rbx, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
cmovb si, cx
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
cmovl rcx, rsi
dec rcx
or al, 96
sbb al, 123
cmovnle cx, cx
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 1
and al, -127
bt edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
