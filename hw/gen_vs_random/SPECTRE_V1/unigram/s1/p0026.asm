.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
setnle al
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
lea eax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
movsx rcx, bx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -66
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and dil, -114
sub rdx, 65
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
