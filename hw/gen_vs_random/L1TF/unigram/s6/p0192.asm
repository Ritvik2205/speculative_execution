.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, si, 84
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
test cl, 62
btc ecx, ecx
add al, -80
add cx, 98
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
xor al, 45
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
setb cl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
