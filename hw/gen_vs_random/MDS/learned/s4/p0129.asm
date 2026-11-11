.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and cl, 122 # instrumentation
cmovnb rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
cmovnb edx, edx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
lea cx, qword ptr [rax + rbx]
cmovle ecx, edi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and sil, 65
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 52
xor eax, 73
movzx ecx, sil
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
cmovns rsi, rdi
and dil, al
xchg edi, ecx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 27
bts edi, edx
bts rax, 149
bt rcx, rdi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
or sil, -8
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
lea di, qword ptr [rcx + rbx + 49]
or dl, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
sub dl, dl
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
