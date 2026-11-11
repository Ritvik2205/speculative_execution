.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
bt esi, 44
xor edx, edi
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 94
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, 29
and dl, al
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
sub bx, 9
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
lea esi, qword ptr [rdx + rdx + 44]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
add cl, -93 # instrumentation
not rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
