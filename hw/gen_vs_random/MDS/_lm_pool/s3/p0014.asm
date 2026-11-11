.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
and rsi, 30
test dl, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
or al, dl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and dl, -73
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and al, bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
