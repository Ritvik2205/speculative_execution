.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp di, 86
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
cmovo dx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 59
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
test edx, 86
add bl, -95
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
sub eax, -882981501
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
sub bl, cl
dec rsi
add dl, -26 # instrumentation
cmovle rax, rdx
mul dil
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
