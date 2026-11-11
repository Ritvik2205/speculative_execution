.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 205
or sil, -78
btr edx, 255
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and al, -55
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
cmovl rdx, rsi
and rax, -636362975
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
cmovs si, di
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
