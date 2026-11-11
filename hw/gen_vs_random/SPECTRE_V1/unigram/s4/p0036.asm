.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
lea rdx, qword ptr [rdx + rax]
and di, 73
movsx rcx, ax
add dl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
btc ebx, 139
mov sil, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
setnb dil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 63
not cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
movzx si, cl
cmp al, 23
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
