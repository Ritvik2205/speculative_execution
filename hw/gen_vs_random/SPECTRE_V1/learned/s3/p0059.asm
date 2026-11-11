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
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, cx
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
mov bl, al
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 28
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
