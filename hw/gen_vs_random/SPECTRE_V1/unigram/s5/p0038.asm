.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
movzx di, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
bt ebx, ecx
adc cx, -30
sbb edx, 105
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ebx
not ecx
test al, al
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 12
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add dl, -47 # instrumentation
setbe dl
inc dl
not dx
lea ecx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
