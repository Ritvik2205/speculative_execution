.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
cmp dl, dl
btc esi, 44
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
xchg edx, eax
lea di, qword ptr [rdx + rbx + 90]
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
xor sil, dil
jmp .bb_0.1
.bb_0.1:
sbb dx, si
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
add eax, -1
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
imul bx, ax
add bl, 113 # instrumentation
setbe al
cwd
setl sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
