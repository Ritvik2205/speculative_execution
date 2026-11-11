.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdi + rax]
btc ebx, 139
xor dl, al
cmovnbe rcx, rdi
add al, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rbx, rdi
add al, -121 # instrumentation
setno al
xchg cl, al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
btc di, bx
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
