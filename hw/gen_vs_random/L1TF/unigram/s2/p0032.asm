.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
bts ecx, edx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 87
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
xor rdi, rcx
cmp bx, -21
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
imul edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 69
or sil, -44
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
add sil, -121 # instrumentation
movsx ax, sil
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
