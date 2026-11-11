.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
dec dl
cmovnbe cx, si
xor ax, 17976
or bl, cl
cmovno esi, ebx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
mov cl, cl
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
sub rdx, 74
dec rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
test al, 70
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
