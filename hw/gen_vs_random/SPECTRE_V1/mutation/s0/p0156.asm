.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, rdi
add al, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
xor dl, al
cmovnbe rcx, rdi
xchg cl, al
add al, -121 # instrumentation
setno al
lea rsi, qword ptr [rdi + rax]
btc ebx, 218
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
sbb bl, dl
btc di, bx
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
