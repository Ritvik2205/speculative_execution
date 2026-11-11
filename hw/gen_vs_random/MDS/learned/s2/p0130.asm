.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and bl, 68
or dil, -41
xor dil, sil
btc ax, 66
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 627810357
or al, 24
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
bt edx, ecx
test bl, cl
and rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
