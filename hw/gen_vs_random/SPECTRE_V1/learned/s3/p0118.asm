.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or eax, -1161451853
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and bl, 87
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and cl, dl
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
