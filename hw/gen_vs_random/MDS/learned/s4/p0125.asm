.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -872608366
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
btr di, 199
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 24
or ax, -17790
and dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
bt edi, 254
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
cmp al, dl
and cl, 102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and si, bx
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
xor cl, dl
not edi
add esi, 88
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
bts rax, 117
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
jmp .bb_0.1
.bb_0.1:
xor cl, dl
setnz dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
sbb eax, 69
and bl, 58
cmp cx, 30
bt esi, 5
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
xor dl, cl
test bl, 106
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and bl, 59
xor ax, 2053
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 39
imul cl
or al, -8
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
