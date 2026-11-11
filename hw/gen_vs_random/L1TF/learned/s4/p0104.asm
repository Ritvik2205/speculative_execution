.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
or dl, 8
or dil, cl
lea ecx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
