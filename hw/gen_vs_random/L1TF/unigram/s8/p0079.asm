.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
bts esi, eax
adc dx, cx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
sub rax, -1628299544
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
mov dl, al
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
