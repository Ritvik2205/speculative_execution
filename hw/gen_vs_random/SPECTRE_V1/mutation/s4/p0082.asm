.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub ebx, 82
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -6
cmovl di, si
cwde
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
adc bl, dl
lea rbx, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
dec dl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
mov si, 9258
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
