.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
xor bl, dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
bts rsi, 206
and al, 42 # instrumentation
cmovz esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
cmovb ebx, esi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
bt di, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
cmovno si, cx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
cmovns rcx, rbx
and bl, dl
and rbx, rsi
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
not ebx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or ax, -6817
test eax, 298249463
and dl, dl
cmovle ax, di
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
