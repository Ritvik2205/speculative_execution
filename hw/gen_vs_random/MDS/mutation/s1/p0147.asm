.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
and ax, -10351
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
test eax, 298249463
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
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
cmovp di, dx
test dl, bl
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
btr edx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, -63
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
