.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and ax, 31082
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
test eax, 424329527
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
cmovnz cx, ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
btr rax, 209
btc rdi, 221
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
bt edi, 225
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
and cx, bx
or al, sil
cmovz rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
bt edx, edi
xor bl, cl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
