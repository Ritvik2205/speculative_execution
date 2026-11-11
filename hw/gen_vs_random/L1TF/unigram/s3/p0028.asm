.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
xor ax, 34
xor dl, bl
add si, si
setnz al
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
lea ecx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 91
add dil, -7
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
bswap ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
