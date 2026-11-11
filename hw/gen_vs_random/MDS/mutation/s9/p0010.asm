.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
or bl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and al, dl
xor dil, 81
bts si, 205
cmovnle rdi, rsi
and rax, -636362975
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
test al, 91
xor ax, 23633
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and dl, cl
cmovns di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
