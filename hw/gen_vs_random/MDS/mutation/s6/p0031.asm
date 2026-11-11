.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and ax, 19740
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor al, 34
btc rdi, 221
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
cmovnz cx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
btr rax, 29
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or cl, dl
test eax, -409834435
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
bt edi, 225
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
