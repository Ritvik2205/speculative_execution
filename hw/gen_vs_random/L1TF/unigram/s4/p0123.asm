.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ebx
sub dl, 41
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
cmp dil, al
bt rdi, 18
sub ax, -27107
and rdx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], di
jmp .bb_0.1
.bb_0.1:
cmp al, al
add cl, 42 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
or cl, al
setnz dil
dec bx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
