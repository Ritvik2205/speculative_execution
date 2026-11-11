.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 90
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
lea rdx, qword ptr [rdi]
add cl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
imul al
cmovo si, bx
cmovz rdx, rbx
setb dl
cmovnbe rax, rdi
add dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
