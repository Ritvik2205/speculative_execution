.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rdx
add sil, 27 # instrumentation
setnle sil
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
test cl, bl
lea rbx, qword ptr [rbx + rdi]
sbb dil, 28
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
imul eax, edi
bswap rdx
sub cl, -49
test al, al
mov si, di
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
