.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -6 # instrumentation
cmovnb edi, eax
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and cl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
mov esi, eax
not edi
sbb al, dl
movsx rbx, cl
add dl, 125
imul cx, di, -104
lea ax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
