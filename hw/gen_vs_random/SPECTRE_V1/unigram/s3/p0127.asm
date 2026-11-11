.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rcx + rdx]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmp dil, -58
cmp cl, 46
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 60
mov dl, sil
lea bx, qword ptr [rbx + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
sub dil, dil
bts di, di
sub dx, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
