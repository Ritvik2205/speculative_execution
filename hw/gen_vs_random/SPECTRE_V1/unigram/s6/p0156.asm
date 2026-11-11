.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 73
cmovbe rbx, rdi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], esi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
lea dx, qword ptr [rcx + rcx + 69]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
bt rbx, 244
add bl, 103 # instrumentation
cmovno edi, ebx
setbe al
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 68
cmovo rsi, rsi
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
adc ebx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
