.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rdi]
or bl, dil
test edx, 1380346728
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
add dl, -123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
add dl, 63 # instrumentation
cmovl dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
setnl dl
bt ebx, 10
lea rbx, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 17
bt cx, 94
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
setnp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
