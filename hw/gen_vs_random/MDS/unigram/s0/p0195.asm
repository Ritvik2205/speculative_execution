.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -109 # instrumentation
not rbx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
cmovle edi, ecx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or eax, edx
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ebx
and dl, 107 # instrumentation
cmovs edx, edi
bt rdi, rax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 89
cmovz rdx, rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
test dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 18
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 36
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
xor ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
