.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
cmovnb bx, bx
imul dl
cmovnz rax, rdx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 39
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmp dil, dl
lea rsi, qword ptr [rcx + rax + 86]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
and edi, edi
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
cmovnz rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
