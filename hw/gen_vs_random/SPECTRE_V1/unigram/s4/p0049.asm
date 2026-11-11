.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
setno al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 40
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
or dl, dl
add bl, 63 # instrumentation
cmovl bx, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
inc dil
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
cmovnl rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
bts rdi, 24
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
