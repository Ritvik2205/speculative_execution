.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 933895314
movsx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 11
btc dx, 66
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
add dl, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
add ax, 6656
jo .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, dil
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 73
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rdx + 61]
cmovnbe cx, dx
setp dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
