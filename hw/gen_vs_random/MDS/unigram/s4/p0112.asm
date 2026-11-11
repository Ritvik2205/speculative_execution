.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -21
or cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
cmovo si, bx
test dl, 27
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
cmovnbe edx, edx
jmp .bb_0.1
.bb_0.1:
or rax, -141551502
cmovo edx, ebx
bt esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 55
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
btr ax, si
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
