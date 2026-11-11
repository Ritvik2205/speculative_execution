.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
imul ax
and rbx, rdx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rcx, rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmovnl di, di
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
adc rax, rax
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 49
setp cl
movzx ecx, di
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
test ebx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
