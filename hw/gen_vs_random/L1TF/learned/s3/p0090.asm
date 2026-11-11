.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
cmp al, 27
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test al, 15
add dl, sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 53
xor ax, 34
mov sil, cl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
