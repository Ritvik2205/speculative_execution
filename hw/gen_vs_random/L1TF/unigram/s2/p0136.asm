.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax + rcx + 46]
movzx edx, si
cwde
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
setno dl
imul dl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 21
seto al
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
add dx, dx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 28
cmovns rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
add dil, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
lea ax, qword ptr [rbx + rdi + 60]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
