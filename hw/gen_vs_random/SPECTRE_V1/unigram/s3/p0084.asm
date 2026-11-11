.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
bswap rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
add bl, -95
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
imul edi, esi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
loope .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, edi
imul al
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
setno al
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
