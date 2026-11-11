.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
mov eax, 8
cwde
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 64
setnb sil
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 11
btr eax, edx
lea edi, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 62
or rdx, 11
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
