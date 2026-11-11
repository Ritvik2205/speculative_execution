.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
xor di, -83
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and dl, dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
bts cx, 14
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 62
xor rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and dil, 125
and dl, 84 # instrumentation
cmovle di, bx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
