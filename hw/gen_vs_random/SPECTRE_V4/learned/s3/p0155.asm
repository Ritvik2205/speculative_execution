.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, 1880179600
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
cmovnle cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmovbe si, bx
or rax, 63
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
