.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
cmovbe ebx, ebx
and sil, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
bt rsi, 4
and al, al
and cx, -2
and dl, 72 # instrumentation
cmovz ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
test edi, -1252846009
btr dx, di
or di, di
not sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
test dl, 27
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
