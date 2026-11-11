.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovnp ebx, edi
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
cmovo rbx, rax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
xor al, -28
cmovo edi, ecx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and sil, 65
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
bt eax, eax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
test dl, cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
imul bx
btc rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
adc sil, sil
and bx, -21
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 38
xor ax, 2053
add dl, -99 # instrumentation
not ecx
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
