.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 84
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
setno al
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
mov sil, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno esi, edi
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnb cx, di
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
imul rsi, rax, 46
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
