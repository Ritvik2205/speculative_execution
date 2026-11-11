.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
cmovb ax, di
xchg edi, eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 100
add bx, 85
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
mov rsi, 56
cmovs ecx, ecx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 18
add dl, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or al, -87
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 14
xchg si, bx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
