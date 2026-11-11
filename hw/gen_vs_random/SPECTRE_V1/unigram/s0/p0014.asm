.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
or rsi, 99
add eax, edi
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi]
cmp dl, al
mov cx, 88
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
setnl sil
sbb edx, 25
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
add cl, -71
add al, 127 # instrumentation
sets dl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 36
cmovnl rax, rcx
lea dx, qword ptr [rsi + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
