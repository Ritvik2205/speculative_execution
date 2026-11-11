.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
btc rdi, 221
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
btr rax, 56
cmovnz cx, ax
xor al, -26
and ax, 339
test eax, 1729060510
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
or cl, dl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
or cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
bt edi, 225
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
