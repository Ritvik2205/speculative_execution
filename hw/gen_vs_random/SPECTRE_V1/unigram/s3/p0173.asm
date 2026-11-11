.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
xor rdx, 70
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
add dl, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
xor ecx, 4
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 99
and rcx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
lea si, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 76
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
