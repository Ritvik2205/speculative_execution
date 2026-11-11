.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
bts si, 205
or sil, -78
btr edx, 197
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
cmovl edx, ebx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and al, 84
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovl rdx, rsi
and rax, 1250429750
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
cmovs si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
