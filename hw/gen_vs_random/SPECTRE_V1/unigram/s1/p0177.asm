.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
btc esi, 24
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
cbw
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
add al, 21 # instrumentation
adc ax, 32514
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 44
cdq
add bl, dl
movsx rbx, bx
and dl, dil
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
