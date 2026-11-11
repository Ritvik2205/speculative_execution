.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 86
btr ax, ax
xor cl, sil
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 59
or dil, 16
xor bl, dil
bts rcx, 30
bts bx, 3
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and dl, 17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
bt ax, 76
test sil, 41
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
xor rbx, 89
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
