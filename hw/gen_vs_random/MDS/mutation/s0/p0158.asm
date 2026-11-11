.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 158
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and al, dl
cmovns di, bx
and rax, 4
and dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
xor ax, -6793
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
or bl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
xor dil, -124
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
cmovnle rdi, rsi
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
