.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -53 # instrumentation
sbb dil, bl
bts si, di
add al, 123 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
setbe dl
add al, -25 # instrumentation
sbb di, si
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -56 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
lea rdx, qword ptr [rdi + rsi + 23]
and dil, cl
imul rcx
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
mov bl, -31
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 90
lea esi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
