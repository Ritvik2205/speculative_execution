.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
add al, -76 # instrumentation
cmovnbe dx, dx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add bl, -15 # instrumentation
movzx cx, dil
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rbx, 41
mov al, dil
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
lea eax, qword ptr [rbx + rbx + 18245]
movsx ax, cl
dec rax
test bl, -8
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmp si, -11
cmp bx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
