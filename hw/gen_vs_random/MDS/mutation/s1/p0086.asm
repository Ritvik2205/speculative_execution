.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
cmovbe edi, edi
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and cl, 91 # instrumentation
cmovle rbx, rbx
btr rsi, rdi
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
xor dl, -43
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
or cl, -77
cmovbe si, cx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
test cl, cl
test cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
test cl, bl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
