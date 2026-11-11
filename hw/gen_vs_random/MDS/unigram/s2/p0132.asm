.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dl
bts eax, ebx
xor bl, dil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 14
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
btr ebx, eax
cmovo rdi, rcx
cmovz rcx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
btr rsi, 73
cmovnle rsi, rcx
cmovns rbx, rax
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 25
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
test rsi, 879594088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
