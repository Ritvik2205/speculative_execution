.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
cmovnl dx, dx
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and sil, bl
lea rsi, qword ptr [rax + rsi + 81]
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
and sil, al
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
cmovb eax, edx
mov dil, dl
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
imul ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
