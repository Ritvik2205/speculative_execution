.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rdi
add al, -121 # instrumentation
setno al
xor dl, al
and rbx, rdi
lea rsi, qword ptr [rdi + rax]
add al, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
xchg cl, al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
btc ebx, 139
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
btc di, bx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
