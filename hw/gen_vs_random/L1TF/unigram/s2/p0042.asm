.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
btc rdx, 99
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
imul di, dx, 92
jmp .bb_0.1
.bb_0.1:
setl dl
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
or si, -97
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
lea rcx, qword ptr [rcx]
add bl, 15 # instrumentation
cmovb ecx, ecx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
