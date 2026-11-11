.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and ax, di
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
cmovp cx, ax
and al, 14
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or al, dl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
cmovns dx, bx
cmovle ecx, ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
