.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
test edx, 98
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
not dl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rax], si
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor edx, edi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
lea dx, qword ptr [rsi + rcx]
imul rdx
inc cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
