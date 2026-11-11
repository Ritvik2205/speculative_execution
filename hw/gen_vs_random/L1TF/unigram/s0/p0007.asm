.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnbe al
cmovnl di, cx
bt rdi, rcx
neg di
lea rsi, qword ptr [rbx + rdi + 82]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdi
cmovnl cx, cx
neg edx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
mul bl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 18
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 47
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
