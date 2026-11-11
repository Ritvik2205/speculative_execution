.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
btr rsi, rbx
or cx, 23
cmp rcx, 66
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
neg cx
sbb eax, eax
jmp .bb_0.1
.bb_0.1:
mul al
or bl, -88
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
test al, al
setbe dl
and ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
