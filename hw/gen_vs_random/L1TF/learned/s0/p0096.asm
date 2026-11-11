.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 13
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 17
movsx rsi, cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
cmovbe rsi, rbx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
mov cl, al
xor dl, cl
mov rsi, 9
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
