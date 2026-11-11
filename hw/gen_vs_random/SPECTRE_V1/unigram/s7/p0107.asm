.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sub al, cl
sbb rcx, 93
adc rsi, 110
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
xchg sil, sil
cmp rax, -72548874
dec ax
sub al, dl
or bl, 25
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
add cl, 11 # instrumentation
cmovns eax, edx
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
