.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
or cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
btc rdi, 221
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and ax, -10351
btr rax, 209
cmovnz cx, ax
bt edi, 17
test eax, -675944960
or cl, cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
xor al, 9
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
