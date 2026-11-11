.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovnz ax, ax
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
test cl, bl
or dil, bl
or cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 82
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and cx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or al, -48
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
xor cx, 77
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 53
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and dil, -49 # instrumentation
cmovno di, ax
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
