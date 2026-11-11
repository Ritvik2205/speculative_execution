.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
btc rdi, 221
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
xor al, 115
and ax, 19224
btr rax, 56
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
cmovnz cx, ax
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
or cl, dl
bt edi, 225
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test eax, -675944960
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
