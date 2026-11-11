.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test bl, 106
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
test rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
bt ax, si
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 76
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
test al, -59
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 81
btc ebx, 34
cmovnp rsi, rsi
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
jmp .bb_0.6
.bb_0.6:
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
jmp .bb_0.7
.bb_0.7:
btc rdi, 6
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
movzx rsi, ax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
sub dl, dl
cmp cl, cl
not si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
