.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
or bl, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
xor ax, -4010
xor dil, -3
and al, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and dl, cl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
bts si, 158
cmovnle rdi, rsi
cmovns di, bx
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
test al, 127
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rax, 498847670
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
