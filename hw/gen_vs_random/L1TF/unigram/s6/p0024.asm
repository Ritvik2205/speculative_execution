.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
or eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
xor dl, 19
add bl, -127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ecx
imul ax, dx, 37
lea rsi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
imul rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
