.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, ebx
and dl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
test ax, si
and dl, dl
cmovnz rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 100
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
xor ax, -6793
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
cmovp bx, di
not dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
or rdi, rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and dl, 16 # instrumentation
cmovle edx, edx
test di, 68
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
