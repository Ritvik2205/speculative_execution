.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
test al, -99
sbb bl, al
imul al
sub al, dl
sbb eax, 100
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xchg sil, cl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
cmp cl, 38
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
