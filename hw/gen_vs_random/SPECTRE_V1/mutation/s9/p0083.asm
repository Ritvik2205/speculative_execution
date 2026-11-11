.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
sbb di, -122
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
cmp si, -11
imul al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 36 # instrumentation
sub rsi, rsi
lea rcx, qword ptr [rdi + rdi + 3798]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
lea cx, qword ptr [rbx + rax]
and bl, al
sbb bl, cl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add bl, 78 # instrumentation
adc si, -91
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
bt esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add dl, 117 # instrumentation
sbb rcx, rax
and bl, -65
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
add dl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
