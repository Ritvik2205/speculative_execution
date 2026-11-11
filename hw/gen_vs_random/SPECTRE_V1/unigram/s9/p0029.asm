.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
test dl, -7
or al, 100
lea rsi, qword ptr [rdi + rax + 49498]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -76 # instrumentation
cmovnbe di, di
sbb cl, dl
imul rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add dil, al
add al, 13 # instrumentation
cmovno rdi, rax
not rbx
test al, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
