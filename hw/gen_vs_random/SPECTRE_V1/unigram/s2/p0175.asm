.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
xor rax, 620504108
sub cl, -47
mov cl, al
adc edi, 87
lea rdi, qword ptr [rax + rdi + 74]
cmovno ax, di
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
adc eax, 1725322202
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 83
movzx edx, dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
btr rcx, 131
adc edx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
