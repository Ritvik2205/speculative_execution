.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
bts si, 158
and bl, -120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
btr edx, 255
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rax, 4
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
and al, 35
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
cmovp di, dx
test dl, bl
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
btr edx, 255
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, -63
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
