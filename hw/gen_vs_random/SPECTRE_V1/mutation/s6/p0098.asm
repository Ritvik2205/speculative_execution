.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, 104
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovb rcx, rdx
add di, bx
bts dx, 26
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rax, rdx
add eax, 1518653812
test rcx, rax
jmp .bb_0.2
.bb_0.2:
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovbe rdx, rbx
mul cl
add dl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
bts rdi, 229
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
not rbx
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
