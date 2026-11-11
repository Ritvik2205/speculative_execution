.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
or sil, -49
bts si, 205
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
btr edx, 197
jmp .bb_0.1
.bb_0.1:
cmovl rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
cmovs si, di
and al, 87
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rax, 41
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovl edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
