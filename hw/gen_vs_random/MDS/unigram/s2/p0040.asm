.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
or al, -24
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor al, dl
test sil, cl
cmovnbe edx, esi
cmovle di, cx
and al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
btc rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
cmovle rsi, rdx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
not sil
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
