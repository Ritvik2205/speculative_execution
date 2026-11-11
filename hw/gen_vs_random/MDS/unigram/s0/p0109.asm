.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb di, dx
bt rdi, rax
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
cmovp ecx, esi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 23
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt edi, edi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
test dl, dl
cmovnz di, cx
cmovnz bx, dx
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
cmovnb ax, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 45
xor sil, 83
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
