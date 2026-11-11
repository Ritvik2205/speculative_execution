.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
cmovs ecx, edi
cmovnbe rcx, rcx
test cl, cl
and rax, 41
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, 1886208862
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rax, -2058103810
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovl rdx, rsi
cmovs si, di
and al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
