.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, -81
or rbx, rsi
add cl, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
xor ax, 27703
inc sil
jmp .bb_0.1
.bb_0.1:
imul rbx, rsi, 70
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
add al, 121 # instrumentation
setnb sil
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
or bl, 114
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sbb bl, -88
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
