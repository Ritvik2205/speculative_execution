.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rax, -731384280
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
or rdx, -109
btr di, bx
jmp .bb_0.1
.bb_0.1:
xor bx, 79
xor al, -19
xor ecx, 8
and al, bl
btr dx, 47
or rcx, 54
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and sil, sil
and dil, -62
test si, 77
test bl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
