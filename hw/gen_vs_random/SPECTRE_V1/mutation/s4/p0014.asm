.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
add cl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
movzx cx, sil
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
or dl, bl
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rax, rsi
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
btr rax, rdx
add bl, -107 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 6
jmp .bb_0.2
.bb_0.2:
add bl, 26 # instrumentation
sbb dl, cl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
bt rdi, 110
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
