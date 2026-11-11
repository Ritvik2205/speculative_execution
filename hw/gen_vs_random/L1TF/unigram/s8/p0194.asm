.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdi
setp cl
and ecx, edi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 51
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
movsx rax, dl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdi]
add al, -84 # instrumentation
setno dl
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
and rcx, 31
add bl, 113 # instrumentation
setbe dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
