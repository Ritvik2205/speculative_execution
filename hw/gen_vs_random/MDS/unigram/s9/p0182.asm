.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, bl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
xor cl, al
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
btc rdi, 221
cmovnl edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
test al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
xor al, 9
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
btc bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
