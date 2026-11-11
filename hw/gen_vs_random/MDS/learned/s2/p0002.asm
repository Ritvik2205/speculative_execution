.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and dl, -73
xor cl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and edi, 23
test dl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor di, 40
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
or sil, dil
test dil, bl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
