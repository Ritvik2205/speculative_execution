.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
cmovnbe rbx, rdx
cmovnb rsi, rbx
mov dil, sil
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
lea eax, qword ptr [rdi + rbx + 18]
setnle al
sbb sil, sil
and bl, -43
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
imul cl
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
bt rdx, 84
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
