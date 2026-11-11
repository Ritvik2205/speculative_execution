.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and bl, sil
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
test eax, -409834435
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
btr rdi, rcx
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
btr dx, cx
and sil, -35 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
test eax, esi
and al, 35
and edi, 23
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
bt eax, esi
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
