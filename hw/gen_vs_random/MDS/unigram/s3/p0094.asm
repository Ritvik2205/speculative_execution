.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 78
cmovnb edi, edi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
or dl, -18
btr rcx, rcx
and dl, -7
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 68
and dl, -1 # instrumentation
cmovnb si, di
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and dl, -115 # instrumentation
cmovl di, dx
xor cx, 79
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and dl, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
cmovle edx, ebx
and al, -56 # instrumentation
cmovl rax, rcx
btc rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
