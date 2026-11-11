.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
mov esi, eax
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
sbb al, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
lea ax, qword ptr [rdi]
not edi
movsx rbx, cl
imul cx, di, -104
add dl, -1
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and cl, bl
add al, -6 # instrumentation
cmovnb edi, eax
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
