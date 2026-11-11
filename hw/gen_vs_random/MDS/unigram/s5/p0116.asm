.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, 200
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and dil, dil
test dl, 27
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
xor dl, al
bt di, 52
xor dl, sil
not rdx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 23
and cl, 66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
test bl, bl
and dil, 61 # instrumentation
cmovl bx, di
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
or edi, ebx
cmovz di, si
btr cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
