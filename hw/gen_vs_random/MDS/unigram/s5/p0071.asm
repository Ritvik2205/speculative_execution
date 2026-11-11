.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
btr ax, dx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and al, 16 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
test sil, al
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
bts di, 37
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
xor dil, 81
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and bl, 68
bt edx, 3
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
cmovo dx, di
bt rcx, rsi
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
bt esi, 3
cmovnb rbx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
