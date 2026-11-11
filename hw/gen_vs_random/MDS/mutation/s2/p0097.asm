.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 91 # instrumentation
cmovle rbx, rbx
xor al, bl
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
btr rsi, rdi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
xor dl, -19
cmovbe edi, edi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
test cl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
cmovbe si, cx
test cl, cl
or cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
