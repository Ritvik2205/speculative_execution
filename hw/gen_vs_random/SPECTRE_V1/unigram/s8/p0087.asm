.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz dx, ax
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
xor rsi, 42
xchg ebx, ecx
bswap rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 11
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
lea rsi, qword ptr [rdx + rsi + 10]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
test rcx, rsi
cmovb ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
