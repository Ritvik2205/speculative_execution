.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
or al, 19
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and dl, -109
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, rax
movsx cx, bl
test edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
dec di
inc si
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
