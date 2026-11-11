.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
xor ax, -12492
cmovnle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 498847670
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
cmovns di, bx
test al, 66
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
xor dil, 81
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
bts si, 205
and al, dl
jmp .bb_0.1
.bb_0.1:
test eax, 343548072
btc esi, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
cmovz edx, edx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
