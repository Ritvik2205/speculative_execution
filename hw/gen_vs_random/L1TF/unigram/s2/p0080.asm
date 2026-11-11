.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cl
or rcx, 61
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 66
setnp al
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
test eax, 899472326
add si, -5
jmp .bb_0.1
.bb_0.1:
xchg dil, sil
xchg al, dil
setno sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
add dl, 10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
