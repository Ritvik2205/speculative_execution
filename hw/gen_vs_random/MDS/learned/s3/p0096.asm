.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 92
or ebx, edi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
or eax, -1827868798
cmovl rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
cmovle rdi, rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
or rsi, 82
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
and al, 126
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
bts rax, 149
cmovnle cx, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
cmovnz di, di
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
imul ax, di, 57
or rdi, rax
bt cx, 83
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
xor cl, 122
bt esi, 87
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 63
sub ecx, edi
xor al, -15
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or rax, -285849275
test bl, 106
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
cmovnp cx, ax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
movzx di, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
