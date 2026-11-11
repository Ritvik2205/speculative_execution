.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 2
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1272979430
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 23
xor si, 23
adc dil, bl
add sil, 73 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
xchg al, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 91
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
or dl, 1 # instrumentation
add cl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
btr ax, 74
add cl, 97 # instrumentation
adc ax, cx
add bl, 36 # instrumentation
setnl cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
