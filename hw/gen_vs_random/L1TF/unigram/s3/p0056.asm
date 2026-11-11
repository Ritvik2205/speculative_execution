.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, al
sub dx, 34
and rsi, rcx
add ebx, 2
sub rax, 1806572419
cmovnb rdi, rcx
or dl, -67
cmovl si, cx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor ecx, 2
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
sub cl, dl
lea ax, qword ptr [rcx + rdi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 30
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
