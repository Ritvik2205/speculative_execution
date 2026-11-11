.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, -114
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
movzx edi, ax
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
lea bx, qword ptr [rax + rbx + 39]
cmovp ax, ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cx, 19
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
setp al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
bswap rsi
imul rsi, rdx
lea bx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
