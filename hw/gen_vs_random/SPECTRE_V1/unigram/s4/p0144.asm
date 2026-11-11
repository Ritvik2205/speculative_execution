.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -47
or rax, -3
setp sil
lea edx, qword ptr [rdi]
xor rdi, rdx
sub al, 63
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
test sil, 97
mul dl
lea cx, qword ptr [rbx + rax + 78]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
not esi
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 96
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
