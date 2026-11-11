.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
xor al, -89
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
btc rdi, 221
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
test eax, 1287331633
or cl, dl
btr rax, 209
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
bt edi, 17
or cl, cl
and ax, 13090
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
