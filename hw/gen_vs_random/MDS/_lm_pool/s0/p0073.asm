.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
test edi, -1252846009
jmp .bb_0.1
.bb_0.1:
or sil, cl
or cl, al
xor cx, -18
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 58
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 38
and al, -55
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor di, -83
and ax, 19740
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and al, sil
jmp .bb_0.4
.bb_0.4:
cmovnp rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
