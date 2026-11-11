.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 49
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
cmovnb ax, di
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
cmovnz ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test al, -7
and si, -121
cmovz ebx, edx
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
or di, bx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
xor si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
