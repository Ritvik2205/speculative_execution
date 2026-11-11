.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 7
adc rax, 61
sub cl, 34
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 80
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 18
add bl, 26 # instrumentation
sbb al, sil
or dl, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
test edx, 1380346728
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 32
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
btc cx, 34
setno bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
