.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
xor cl, -40
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
cmovnbe edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmovl edi, edi
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], -94
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, -128
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
setb dil
movzx edi, cl
cmovb edx, edi
bts rdx, 212
cmovnbe si, di
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
