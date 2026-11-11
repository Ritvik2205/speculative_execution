.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rsi + rax + 38]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
cmp al, cl
jmp .bb_0.1
.bb_0.1:
and bl, bl
cmp sil, bl
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rax + rbx + 51]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
