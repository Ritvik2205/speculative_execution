.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
add dil, -87 # instrumentation
cmovnle rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
lea edx, qword ptr [rax + rdx]
add dl, 127 # instrumentation
setnbe sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
lea cx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
cmovnb ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
