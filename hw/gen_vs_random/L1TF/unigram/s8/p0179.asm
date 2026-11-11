.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 55 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
add dl, 10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 16
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
add cx, 3
dec ebx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
setb bl
jmp .bb_0.1
.bb_0.1:
add bl, 113 # instrumentation
setbe sil
cmovno ebx, ebx
add cl, 88
bts edi, 88
cmp dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
xor dl, 64
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
