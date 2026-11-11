.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 25
test cl, bl
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
bt eax, ecx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.2
.bb_0.2:
test bl, -9
test dil, -80
test dil, 46
or ax, -7150
btc ax, 11
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and di, 91
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
