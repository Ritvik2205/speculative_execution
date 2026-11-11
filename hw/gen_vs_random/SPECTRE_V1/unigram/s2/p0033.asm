.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
imul bx, dx
imul edi, ecx
or dil, cl
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
setno dl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -73 # instrumentation
setnbe bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
adc al, sil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 44
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
test si, 62
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
