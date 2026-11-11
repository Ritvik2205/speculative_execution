.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns dx, ax
cmp bl, cl
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
mov esi, ecx
imul sil
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rsi + rax + 85]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
add dl, 125
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
setl cl
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
cwde
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
