.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
mov al, 7
cmovp di, si
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -51 # instrumentation
cmovl esi, eax
lea rdi, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], -9
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and cx, 19
add al, bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 75
test di, ax
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
