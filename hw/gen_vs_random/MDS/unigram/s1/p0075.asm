.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
or si, -12
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 48
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and dl, -41 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
btc rbx, rdx
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
test rsi, rbx
test rdx, 34
cmovle bx, ax
and bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
