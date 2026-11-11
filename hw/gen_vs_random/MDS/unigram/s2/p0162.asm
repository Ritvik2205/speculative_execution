.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 68
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
btr edx, ecx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and sil, -34 # instrumentation
cmovs rax, rsi
or ax, -7150
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
cmovnbe esi, ecx
xor dl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rsi, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
