.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
lea rcx, qword ptr [rdi + rax + 69]
lea edx, qword ptr [rcx + rdi + 62270]
setnle sil
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
xor bl, sil
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and sil, 110
and si, bx
mov rax, -6437636498926413678
cmovnl esi, ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
