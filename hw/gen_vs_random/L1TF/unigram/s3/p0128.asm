.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
setnb al
setnle cl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 15
add bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
add cl, -103 # instrumentation
cmovnl rdx, rbx
lea eax, qword ptr [rsi + rbx]
lea rdi, qword ptr [rcx + rcx + 24]
add bx, 85
add dl, 109 # instrumentation
sbb dil, 69
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
lea ax, qword ptr [rbx + rbx + 86]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
