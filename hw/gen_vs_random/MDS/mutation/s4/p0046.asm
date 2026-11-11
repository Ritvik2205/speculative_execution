.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
btr edx, 255
bts si, 158
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rax, -636362975
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and al, -114
cmovs si, di
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
cmovl rdx, rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
