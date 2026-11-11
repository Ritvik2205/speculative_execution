.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, dl
add edi, ebx
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
dec cl
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], esi
and eax, ebx
add al, 40 # instrumentation
cmovp rsi, rax
cmp cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
xor cx, si
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
mov dx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
