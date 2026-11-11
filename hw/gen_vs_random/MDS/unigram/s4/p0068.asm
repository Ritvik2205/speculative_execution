.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
test esi, 425331143
bt rdi, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 62
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and dl, -127 # instrumentation
cmovno edx, ecx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
xor dil, cl
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
cmovno si, di
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
