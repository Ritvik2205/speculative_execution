.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, al
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add al, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -24
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
setnp al
add al, -67 # instrumentation
setz sil
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 87
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
add dl, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
btc rcx, 81
lea rax, qword ptr [rdx + rdx]
or bx, 53
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
