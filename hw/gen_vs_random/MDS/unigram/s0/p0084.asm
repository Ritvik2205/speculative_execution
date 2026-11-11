.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
bt rax, 4
test edi, -1252846009
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and dl, 60 # instrumentation
cmovnl ebx, edx
cmovs rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
and dl, 18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and dil, 101 # instrumentation
cmovno ecx, edi
cmovb rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
