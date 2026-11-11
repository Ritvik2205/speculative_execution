.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 92
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
cmp rcx, rcx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
mov dl, al
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
sbb di, cx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add cl, 42 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 3
sbb di, 80
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
add bl, -92 # instrumentation
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
