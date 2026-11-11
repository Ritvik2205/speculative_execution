.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rax, 1161375577
setnb cl
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
xor rax, rdx
add cl, sil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 98
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 65
and rdi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdi]
setz al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
imul dl
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
