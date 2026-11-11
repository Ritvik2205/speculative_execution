.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -108 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and al, al
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add cl, 36 # instrumentation
sub rax, rax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
xor dil, dil
cmovno ax, cx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 18
btr rbx, rsi
add cl, 112 # instrumentation
adc cl, sil
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
sub al, -82
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
