.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
setp sil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
sub dil, bl
mov al, bl
or eax, -1161451853
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 14
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
lea dx, qword ptr [rdx + rsi + 15]
xor cl, al
add al, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rsi, 84
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
