.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
xchg rbx, rax
cmovno di, ax
cmp cx, 19
lea cx, qword ptr [rbx + rdi + 14]
cmp al, dil
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 17
cmp cl, 77
add cl, dl
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
