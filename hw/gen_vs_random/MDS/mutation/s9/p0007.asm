.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
xor ax, -12492
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and al, -54
test rax, -359674714
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rax, -2058103810
jmp .bb_0.1
.bb_0.1:
xor al, 9
and ax, -4410
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
test eax, 343548072
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
cmovnz cx, ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
btr rax, 56
btc rdi, 221
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
bt edi, 17
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
