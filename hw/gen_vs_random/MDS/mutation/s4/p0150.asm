.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -4010
xor cl, 55
cmovns di, cx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
cmovnbe rdx, rdi
cmovnz rax, rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
not dl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test cx, 401
and al, dl
bt si, 23
bt di, cx
or al, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rax, -1931765367
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
