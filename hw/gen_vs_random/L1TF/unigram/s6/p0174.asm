.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
add bl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
cmovnb rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rcx]
add edx, 56
cmovl si, ax
cmovnl bx, cx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
xor dil, -42
xor al, cl
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
movzx si, cl
setb dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
