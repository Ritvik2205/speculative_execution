.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
xor al, al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
cmovnz rcx, rax
bt ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
xor al, 9
and ebx, 69
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
test sil, bl
xor dl, bl
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
cmovp ebx, edx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
and cl, 38 # instrumentation
cmovbe edx, ecx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
