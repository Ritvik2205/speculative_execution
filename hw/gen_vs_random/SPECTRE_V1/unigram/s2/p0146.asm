.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
sets cl
add dl, -124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 30
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
cmp rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 2
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
bts rdx, 3
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
movzx si, cl
imul bl
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
cmp edx, 24
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
