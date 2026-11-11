.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 99
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
setbe cl
btc dx, 2
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -52
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
cmovz ecx, eax
or si, -97
xor bx, 89
cmovnb rbx, rbx
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
