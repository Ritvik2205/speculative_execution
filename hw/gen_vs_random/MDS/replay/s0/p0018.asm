.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdi
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor dl, -43
xor al, bl
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and cl, 91 # instrumentation
cmovle rbx, rbx
cmovbe edi, edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
test cl, bl
test cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or cl, -36
test cl, cl
cmovbe si, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
