.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
cmovz eax, edi
bts rdx, 200
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
test rcx, rcx
and dl, dl
and al, 61 # instrumentation
cmovl cx, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
test rax, -708244380
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
or al, 25
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
