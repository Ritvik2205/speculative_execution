.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 12
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
btr bx, di
bts ax, bx
test di, dx
cmovnb ax, dx
test al, 22
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and cl, -6
or ax, cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
