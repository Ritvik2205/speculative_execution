.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
not al
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 60
or rbx, -77
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test cl, sil
or al, -58
and al, -55
jmp .bb_0.2
.bb_0.2:
or al, sil
and cx, -2
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
not cl
test al, bl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
