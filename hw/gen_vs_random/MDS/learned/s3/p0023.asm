.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
bts rsi, rdi
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
test rax, -359674714
or al, -22
or bl, 127
or ax, 30524
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
btc si, 99
xor cl, 15
test cl, -113
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
