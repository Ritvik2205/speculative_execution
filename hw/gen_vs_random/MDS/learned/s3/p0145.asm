.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
or al, 37
jmp .bb_0.1
.bb_0.1:
or bl, 13
and cl, cl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
xor rbx, 89
or rdi, -11
or rax, -1561934807
xor rsi, -117
or edi, -88
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
not sil
xor cl, 83
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
