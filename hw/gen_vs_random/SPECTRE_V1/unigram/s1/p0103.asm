.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 0 # instrumentation
adc bl, al
and rdx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
lea eax, qword ptr [rax + rbx + 10]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
bts ax, si
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
test bl, -8
inc cx
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
add dl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
sub al, dil
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
setno bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
