.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1161451853
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
add cl, 107 # instrumentation
lea edi, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
add bl, bl
bt ebx, edi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
add al, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
setnb al
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
lea dx, qword ptr [rsi + rsi + 72]
movzx di, dil
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
