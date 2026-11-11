.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
cmovb ax, di
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
add rdi, rax
and bl, cl
sbb rax, -1477844571
bt si, bx
and sil, 110
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
cmovo edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
