.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -1571963467
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
not edi
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdi
add bl, -27 # instrumentation
setle bl
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
cmp dil, -58
xchg sil, dil
cmovle edi, eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
sbb al, dl
cmovl rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
adc dl, 48
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
