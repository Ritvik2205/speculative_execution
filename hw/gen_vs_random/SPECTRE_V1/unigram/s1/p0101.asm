.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
lea ebx, qword ptr [rbx + rcx + 34]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 1
cmp dl, sil
btc ebx, 218
cdq
cmovb rdx, rsi
add bx, -65
add cl, 83 # instrumentation
setbe al
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
