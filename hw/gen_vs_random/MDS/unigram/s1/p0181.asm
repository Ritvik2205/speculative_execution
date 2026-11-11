.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
xor al, 115
cmovs ebx, edi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
or dil, -41
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and dil, sil
test bx, 4954
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
btr di, di
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 18
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor rsi, -117
cmovs ecx, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
