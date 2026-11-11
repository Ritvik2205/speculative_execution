.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
cmovle rsi, rax
and bl, 87
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
btc edi, 21
cmovno cx, ax
lea rax, qword ptr [rax]
sbb ax, 82
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
add al, -117 # instrumentation
not rbx
add ax, cx
lea di, qword ptr [rdx + rdx + 54]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
cmp bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
