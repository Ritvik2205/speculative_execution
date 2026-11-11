.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -9 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 70
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
imul rcx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rax]
add al, 109 # instrumentation
adc bx, 75
add cl, -6 # instrumentation
cmovnb edx, ecx
jmp .bb_0.1
.bb_0.1:
add bl, -45 # instrumentation
cmovs rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 43
add dl, -56 # instrumentation
cmovs rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
sbb si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
