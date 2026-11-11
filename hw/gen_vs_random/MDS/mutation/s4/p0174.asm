.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rax, 452940266
xor ax, 23633
cmovns di, bx
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
cmovnle rdi, rsi
and dl, cl
and al, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
xor dil, 124
test al, 66
or si, 0b1000000000000000 # instrumentation
bsf dx, si
bts si, 205
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
