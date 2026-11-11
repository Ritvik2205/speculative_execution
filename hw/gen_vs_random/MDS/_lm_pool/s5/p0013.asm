.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or al, 74
or bl, cl
or al, -17
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
not al
and bl, 68
bts rbx, rdx
or al, 54
not cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
