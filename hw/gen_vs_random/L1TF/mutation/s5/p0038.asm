.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
add cl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
lea edi, qword ptr [rbx]
adc cx, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
cmovb edi, edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
movsx rdx, dx
jmp .bb_0.2
.bb_0.2:
add al, -6 # instrumentation
cmovnb edi, eax
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
not edi
mov esi, eax
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and cl, bl
add dl, -1
movsx rbx, cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
lea ax, qword ptr [rdi]
imul cx, di, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
