.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
cmovl edi, ecx
setns bl
xor cl, al
test ecx, 34
add cl, -40 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
test ax, 22956
test al, bl
setnbe bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
add cx, 81
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], cx
cmp dx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
