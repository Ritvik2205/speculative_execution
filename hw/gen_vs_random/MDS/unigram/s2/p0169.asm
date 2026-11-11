.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, 89
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
or rcx, 54
or bl, 13
xor ecx, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or al, 37
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and dl, sil
jmp .bb_0.1
.bb_0.1:
or cl, sil
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edi
and al, 49
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
xor al, -89
or dl, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
