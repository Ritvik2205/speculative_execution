.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
or bl, al
cmovnb edi, ebx
add cl, sil
test cl, -119
cmp dil, al
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
test sil, 1
adc cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
neg cl
sub al, -84
and dl, sil
add dl, cl
add bl, -49
sub dil, dl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or ax, -26182
and bx, 68
adc al, dl
xor ax, 15671
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
or ebx, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
