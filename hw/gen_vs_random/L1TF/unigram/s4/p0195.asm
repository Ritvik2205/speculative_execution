.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
lea edx, qword ptr [rcx + rdx + 59]
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
seto dl
add dl, 126 # instrumentation
setnb al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
setbe al
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
lea eax, qword ptr [rsi]
add bx, 69
btc ax, di
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
