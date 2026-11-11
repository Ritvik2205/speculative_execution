.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -47
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
sub bl, bl
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
or al, al
cmovp ax, di
cmovle edx, ecx
sub esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovz edx, eax
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add edx, 51
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
movzx ecx, bl
cmovnp rsi, rsi
test al, bl
mul cl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmp bl, al
test rcx, -2118888343
cmp ax, -15409
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovnbe rax, rcx
xor cl, bl
sub ax, 24441
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
bts rdi, rsi
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
cmp dx, cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
