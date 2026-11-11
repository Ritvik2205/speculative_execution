.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rax, 627810357
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
or bl, dl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
cmovnle rdi, rsi
bts si, 158
cmovns di, bx
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
xor dil, -5
xor ax, -4010
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and dl, cl
and al, dl
test al, -7
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
