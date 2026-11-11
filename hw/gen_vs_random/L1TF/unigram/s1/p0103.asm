.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add eax, 760523556
add cl, -84 # instrumentation
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
setnbe sil
adc dl, dil
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
xchg rsi, rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
setnl sil
lea cx, qword ptr [rsi]
setl dl
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 82
cmovl rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
